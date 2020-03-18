terraform {
  required_version = "= 0.12.23"
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

data "aws_vpc" "main" {
  tags = {
    Usage = "packer_build"
  }
}

data "aws_subnet" "main" {
  vpc_id = data.aws_vpc.main.id
  tags = {
    Usage = "packer_build"
  }
}


data "template_file" "builders" {
  count    = length(local.kinds)
  template = file("builders.tpl")
  vars = {
    subnet_id   = data.aws_subnet.main.id
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
