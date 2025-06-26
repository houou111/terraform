data "template_file" "startup" {
  template = file("${path.module}/../../templates/${var.template}.sh.tmpl")
  vars = {
    ssh_keys              = var.ssh_keys
    center_ansible_pubkey = var.center_ansible_pubkey
  }
}

resource "google_compute_address" "static_ips" {
  count  = var.assign_static_ip ? length(var.vm_names) : 0
  name   = var.assign_static_ip ? "${var.vm_names[count.index]}-ip" : null
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
    dynamic "access_config" {
      for_each = [1]
      content {
        nat_ip = var.assign_static_ip ? google_compute_address.static_ips[count.index].address : null
      }
    }
  }

  tags = ["ssh"]

  metadata = {
    ssh-keys = var.ssh_keys
  }

  metadata_startup_script = data.template_file.startup.rendered

  resource_policies = var.resource_policies != null ? [var.resource_policies] : null
}
