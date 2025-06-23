output "network_name" {
  value = google_compute_network.vpc_network.name
}

output "subnet_name" {
  value       = google_compute_subnetwork.subnet.name
  description = "Tên subnet đã tạo"
}

output "subnet_ip_cidr_range" {
  value       = google_compute_subnetwork.subnet.ip_cidr_range
  description = "CIDR của subnet"
}
