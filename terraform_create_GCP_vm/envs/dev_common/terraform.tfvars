// Gán giá trị cho tất cả biến (kể cả biến trước đó có default) trong terraform.tfvars để dễ quản lý và chỉnh sửa sau này.
project_id  = "my-project-03062025-461807"
project_number = "967433611336"
region      = "asia-southeast1"

network_name = "dev-shared-network"
subnet_name  = "dev-shared-subnet"
subnet_ip_cidr_range = "10.10.0.0/16"

vm_start_time = "0 8 * * *"
vm_stop_time  = "0 18 * * *"
time_zone = "Asia/Bangkok"
