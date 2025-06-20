output "instance_names" {
  value = google_compute_instance.nodes[*].name
}

output "instance_ips" {
  value = google_compute_instance.nodes[*].network_interface[0].access_config[0].nat_ip
}

output "static_ips" {
  description = "Danh sách static IP đã gán cho các VM"
  value       = google_compute_address.static_ips[*].address
}
