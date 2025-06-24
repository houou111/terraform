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

  metadata_startup_script = <<-EOT
    #!/bin/bash
    id ansible &>/dev/null || useradd -m ansible
    mkdir -p /home/ansible/.ssh
    echo "${var.ssh_keys}" | sed 's/^ansible://g' > /home/ansible/.ssh/authorized_keys
    # Thêm public key của center vào authorized_keys nếu có
    if [ -n "${var.center_ansible_pubkey}" ]; then
      echo "${var.center_ansible_pubkey}" >> /home/ansible/.ssh/authorized_keys
    fi
    chown -R ansible:ansible /home/ansible/.ssh
    chmod 700 /home/ansible/.ssh
    chmod 600 /home/ansible/.ssh/authorized_keys
    sudo -u ansible bash -c '[[ -f /home/ansible/.ssh/id_rsa ]] || ssh-keygen -t rsa -b 4096 -N "" -f /home/ansible/.ssh/id_rsa'
    chown ansible:ansible /home/ansible/.ssh/id_rsa*
    chmod 600 /home/ansible/.ssh/id_rsa
    chmod 644 /home/ansible/.ssh/id_rsa.pub
  EOT

  resource_policies = var.resource_policies != null ? [var.resource_policies] : null
}
