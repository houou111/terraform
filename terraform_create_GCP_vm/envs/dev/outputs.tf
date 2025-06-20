output "instance_names" {
  value = module.compute.instance_names
}

output "instance_ips" {
  value = module.compute.instance_ips
}

output "network_name" {
  description = "Tên VPC network đã tạo"
  value       = module.network.network_name
}

output "static_ips" {
  value       = module.compute.static_ips
  description = "Danh sách static IP đã gán cho các VM"
}

