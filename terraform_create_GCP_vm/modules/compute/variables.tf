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
