variable "env" {
  description = "Môi trường triển khai"
  type        = string
}

variable "project_id" {
  description = "GCP project ID"
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

variable "project_number" {
  description = "Project number của GCP project"
  type        = string
}
