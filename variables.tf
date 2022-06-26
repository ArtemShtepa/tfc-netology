variable "YC_TOKEN" { default = "" }
variable "YC_CLOUD_ID" { default = "" }
variable "YC_FOLDER_ID" { default = "" }
variable "YC_ZONE" { default = "" }

locals {
  instance_count = {
    tfc-netology = 1
    stage = 1
    prod  = 2
  }
  instance_cpu_cores = {
    tfc-netology = 2
    stage = 2
    prod  = 4
  }
  instance_core_frac = {
    tfc-netology = 5
    stage = 20
    prod  = 100
  }
  instance_ram = {
    tfc-netology = 2
    stage = 4
    prod  = 8
  }
  primary_disk = {
    tfc-netology = 5
    stage = 10
    prod  = 20
  }
  node_disk = {
    tfc-netology = 5
    stage = 20
    prod  = 80
  }
  master_nodes = toset(["main", "reserved"])
}
