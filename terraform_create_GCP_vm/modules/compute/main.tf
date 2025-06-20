resource "google_compute_address" "static_ips" {
  count  = length(var.vm_names)
  name   = "${var.vm_names[count.index]}-ip"
  region = var.region
}

resource "google_compute_resource_policy" "auto_start_stop" {
  count = length(var.vm_names)
  name  = "${var.vm_names[count.index]}-auto-schedule"
  region = var.region

  instance_schedule_policy {
    vm_start_schedule {
      schedule = "0 1 * * *" # 8h sáng GMT+7 (tức 1h UTC)
    }
    vm_stop_schedule {
      schedule = "0 12 * * *" # 19h tối GMT+7 (tức 12h UTC)
    }
    time_zone = "Asia/Bangkok"
  }
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

  metadata = {
    ssh-keys = var.ssh_keys
  }

  resource_policies = [google_compute_resource_policy.auto_start_stop[count.index].self_link]
}
