terraform {
  required_version = ">= 1.0.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "compute" {
  source   = "../../modules/compute"
  vm_names = var.vm_names
  machine_type = var.machine_type
  zone = var.zone
  image = var.image
  disk_size = var.disk_size
  network = var.network_name
  region = var.region
  resource_policies = var.dev_vm_resource_policy_self_link
  ssh_keys = var.ssh_keys
  assign_static_ip = false
}
