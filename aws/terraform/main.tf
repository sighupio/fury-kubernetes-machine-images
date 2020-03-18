terraform {
  backend "s3" {
    bucket = "sighup-fury-dev"
    key    = "fury-kubernetes-aws-feature-auto-join"
    region = "eu-west-1"
  }
  required_version = "= 0.12.20"
}

provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-1"
}

variable "kfi-version" {
  type        = string
  description = "Kubernetes Fury Installer Version. Example: v1.0.0"
}

variable "kubernetes-minor-version" {
  type        = string
  description = "Kubernetes minor version. Example: v1.14"
}

variable "versions-file-path" {
  type        = string
  default     = "../../versions.yml"
  description = "File path containing the versions.yml file"
}

locals {
  kinds              = ["Node", "Master", "Bastion"]
  user               = "ubuntu"
  kfi-version-parsed = split("-", var.kfi-version)[0]
  fury-versions      = yamldecode(file("${path.module}/${var.versions-file-path}"))
  raw-kube-version   = local.fury-versions["fury"][local.kfi-version-parsed]["kubernetes"][var.kubernetes-minor-version]
  kube-version       = trimprefix(local.raw-kube-version, "v")
  cri-tools-version  = "${join(".", slice(split(".", local.kube-version), 0, 2))}.0"
}


resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Usage = "packer_build"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Usage = "packer_build"
  }
}

resource "aws_route" "gw" {
  route_table_id         = aws_vpc.main.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}


resource "aws_subnet" "main" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Usage = "packer_build"
  }
}


data "template_file" "builders" {
  count    = length(local.kinds)
  template = file("builders.tpl")
  vars = {
    vpc_id      = aws_vpc.main.id
    user        = local.user
    kind        = local.kinds[count.index]
    version     = var.kfi-version
    k8s_version = local.kube-version
  }
}

data "template_file" "provisioners" {
  count    = length(local.kinds)
  template = file("provisioners.tpl")
  vars = {
    kind              = local.kinds[count.index]
    kube-version      = local.kube-version
    cri-tools-version = local.cri-tools-version
  }
}

data "template_file" "amis" {
  template = file("amis.tpl")
  vars = {
    provisioners     = join(", ", data.template_file.provisioners.*.rendered)
    builders         = join(", ", data.template_file.builders.*.rendered)
    user             = local.user
    kube-version     = local.kube-version
    critools_version = local.cri-tools-version
  }
}

output "amis" {
  value = data.template_file.amis.rendered
}
