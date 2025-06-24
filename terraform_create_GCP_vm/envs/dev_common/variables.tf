variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "project_number" {
  description = "Project number của GCP project"
  type        = string
}

variable "network_name" {
  description = "Tên VPC network sẽ tạo"
  type        = string
  default     = "dev-shared-network"
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

variable "vm_start_time" {
  description = "Lịch bật VM (cron UTC)"
  type        = string
  default     = "0 2 * * *"
}

variable "vm_stop_time" {
  description = "Lịch tắt VM (cron UTC)"
  type        = string
  default     = "0 12 * * *"
}

variable "time_zone" {
  description = "Timezone cho resource policy schedule (ví dụ: Asia/Bangkok)"
  type        = string
  default     = "Asia/Bangkok"
}
