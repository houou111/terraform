variable "vm_names" {
  description = "Tên các VM sẽ tạo"
  type        = list(string)
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "zone" {
  type    = string
  default = "asia-southeast1-a"
}

variable "image" {
  type    = string
  default = "centos-cloud/centos-9-stream"
  description = "Disk image for VM (CentOS 9 Stream)"
}

variable "disk_size" {
  type    = number
  default = 50
}

variable "network" {
  type    = string
  default = "default"
}

variable "ssh_keys" {
  type    = string
  default = ""
}

variable "region" {
  description = "GCP region cho static IP"
  type        = string
}

variable "resource_policies" {
  description = "Resource policy chung cho các VM (nếu có)"
  type        = string
  default     = null
}

variable "center_ansible_pubkey" {
  description = "Public key của user ansible trên center"
  type        = string
  default     = ""
}

variable "is_dev_center" {
  description = "True nếu là dev_center, để chọn startup script phù hợp"
  type        = bool
  default     = false
}

variable "template" {
  description = "Tên template script sẽ dùng cho VM (node_template hoặc center_template)"
  type        = string
  default     = "node_template"
}

# Đã bỏ biến startup_script, chỉ dùng biến template để chọn script
