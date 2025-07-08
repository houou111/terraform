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

module "network" {
  source                = "../../modules/network"
  network_name          = var.network_name
  subnet_name           = var.subnet_name
  subnet_ip_cidr_range  = var.subnet_ip_cidr_range
  region                = var.region
}

resource "google_compute_resource_policy" "dev_vm_auto_schedule" {
  name   = "dev-vm-auto-schedule"
  region = var.region

  instance_schedule_policy {
    vm_start_schedule {
      schedule = var.vm_start_time
    }
    vm_stop_schedule {
      schedule = var.vm_stop_time
    }
    time_zone = var.time_zone
  }
}
