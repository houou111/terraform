output "network_name" {
  value       = module.network.network_name
  description = "Tên VPC network đã tạo"
}

output "subnet_name" {
  value       = module.network.subnet_name
  description = "Tên subnet đã tạo"
}

output "subnet_ip_cidr_range" {
  value       = module.network.subnet_ip_cidr_range
  description = "CIDR của subnet"
}

output "dev_vm_resource_policy_self_link" {
  value       = google_compute_resource_policy.dev_vm_auto_schedule.self_link
  description = "Resource policy chung cho VM dev"
}
