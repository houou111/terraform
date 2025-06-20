output "instance_names" {
  description = "Names of the created VM instances"
  value       = google_compute_instance.nodes[*].name
}

output "instance_ips" {
  description = "External IPs of the created VM instances"
  value       = google_compute_instance.nodes[*].network_interface[0].access_config[0].nat_ip
}
