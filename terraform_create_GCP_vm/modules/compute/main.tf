data "template_file" "startup" {
  template = file("${path.module}/../../templates/${var.template}.sh.tmpl")
  vars = {
    ssh_keys              = var.ssh_keys
    center_ansible_pubkey = var.center_ansible_pubkey
  }
}

resource "google_compute_address" "static_ips" {
  count  = length(var.vm_names)
  name   = "${var.vm_names[count.index]}-ip"
  region = var.region
}

resource "google_compute_instance" "nodes" {
  count        = length(var.vm_names)
  name         = var.vm_names[count.index]
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
    access_config {
      nat_ip = google_compute_address.static_ips[count.index].address
    }
  }

  tags = ["ssh"]

  metadata = {
    ssh-keys = var.ssh_keys
  }

  metadata_startup_script = data.template_file.startup.rendered

  resource_policies = var.resource_policies != null ? [var.resource_policies] : null
}
