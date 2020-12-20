terraform {
  required_version = ">= 0.12.23"
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
  kinds              = ["Node", "Master"]
  user               = "builder"
  password           = "builder"
  kfi-version-parsed = split("-", var.kfi-version)[0]
  fury-versions      = yamldecode(file("${path.module}/${var.versions-file-path}"))
  raw-kube-version   = local.fury-versions["fury"][local.kfi-version-parsed]["kubernetes"][var.kubernetes-minor-version]
  kube-version       = trimprefix(local.raw-kube-version, "v")
  cri-tools-version  = "${join(".", slice(split(".", local.kube-version), 0, 2))}.0"
  base-template      = "sighup-ubuntu-1"
  datastore          = "Datastore2"
  esxi-host          = "sighupesx2.your-server.de"
  folder             = "KFD Templates"
  network            = "SIGHUP_TESTS"
}

data "template_file" "builders" {
  count    = length(local.kinds)
  template = file("builders.tpl")
  vars = {
    user          = local.user
    password      = local.password
    kind          = local.kinds[count.index]
    version       = var.kfi-version
    k8s_version   = local.kube-version
    base_template = local.base-template
    datastore     = local.datastore
    host          = local.esxi-host
    folder        = local.folder
    network       = local.network
  }
}

data "template_file" "provisioners" {
  count    = length(local.kinds)
  template = file("provisioners.tpl")
  vars = {
    kind              = local.kinds[count.index]
    kube-version      = local.kube-version
    cri-tools-version = local.cri-tools-version
    user              = local.user
  }
}

data "template_file" "vmtemplates" {
  template = file("vmtemplates.tpl")
  vars = {
    provisioners     = join(", ", data.template_file.provisioners.*.rendered)
    builders         = join(", ", data.template_file.builders.*.rendered)
    user             = local.user
    kube-version     = local.kube-version
    critools_version = local.cri-tools-version
  }
}

output "packerjson" {
  value = data.template_file.vmtemplates.rendered
}
