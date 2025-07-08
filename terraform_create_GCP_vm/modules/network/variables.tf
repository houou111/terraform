variable "network_name" {
  description = "Tên VPC network"
  type        = string
  default     = "dev-vpc"
}

variable "subnet_name" {
  description = "Tên subnet sẽ tạo"
  type        = string
  default     = "dev-shared-subnet"
}

variable "subnet_ip_cidr_range" {
  description = "CIDR cho subnet"
  type        = string
  default     = "10.10.0.0/16"
}

variable "region" {
  description = "GCP region cho subnet"
  type        = string
  default     = "asia-southeast1"
}
