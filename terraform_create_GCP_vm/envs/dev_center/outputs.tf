output "instance_names" {
  value = module.compute.instance_names
}

output "instance_ips" {
  value = module.compute.instance_ips
}

output "network_name" {
  description = "Tên VPC network đã tạo"
  value       = var.network_name
}

output "static_ips" {
  value       = module.compute.static_ips
  description = "Danh sách static IP đã gán cho các VM"
}

output "instance_private_ips" {
  value       = module.compute.instance_private_ips
  description = "Danh sách private IP của các VM"
}

output "ssh_commands" {
  value = [
    for ip in module.compute.instance_ips : "ssh -i ~/.ssh/id_rsa ansible@${ip}"
  ]
  description = "Các lệnh SSH để truy cập các VM với user ansible"
}

