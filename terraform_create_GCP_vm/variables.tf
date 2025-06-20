variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "asia-southeast1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "asia-southeast1-a"
}

variable "machine_type" {
  description = "Machine type for VM"
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "Disk image for VM"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "disk_size" {
  description = "Boot disk size (GB)"
  type        = number
  default     = 20
}

variable "network" {
  description = "VPC network name"
  type        = string
  default     = "default"
}

variable "ssh_keys" {
  description = "SSH public keys for VM access"
  type        = string
}
