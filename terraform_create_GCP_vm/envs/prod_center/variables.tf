variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "project_number" {
  description = "Project number của GCP project"
  type        = string
}


variable "region" {
  description = "GCP region"
  type        = string
}

variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "ssh_keys" {
  description = "SSH public key cho VM"
  type        = string
}

variable "machine_type" {
  description = "Loại máy cho VM"
  type        = string
}

variable "image" {
  description = "Disk image cho VM"
  type        = string
}

variable "disk_size" {
  description = "Dung lượng đĩa (GB) cho VM"
  type        = number
}

variable "vm_names" {
  description = "Danh sách tên các VM sẽ tạo"
  type        = list(string)
}


variable "network_name" {
  description = "Tên VPC network dùng chung từ dev_common"
  type        = string
}

variable "dev_vm_resource_policy_self_link" {
  description = "Resource policy chung cho VM dev từ dev_common"
  type        = string
}
