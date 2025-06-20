provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "nodes" {
  count        = 3
  name         = "node${count.index + 1}"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.disk_size
    }
  }

  network_interface {
    network = var.network
    access_config {}
  }

  metadata = {
    ssh-keys = var.ssh_keys
  }
}
