# Terraform GCP 3 VM Example

This project creates 3 Google Cloud VMs named node1, node2, and node3 using Terraform.

## Usage

1. **Configure your variables**
   - Copy your SSH public key and set it in `terraform.tfvars` or pass via CLI.
   - Set your GCP project ID.

2. **Initialize Terraform**
   ```bash
   terraform init
   ```

3. **Apply the configuration**
   ```bash
      terraform apply
   ```

## Files
- `main.tf`: Main resources definition
- `variables.tf`: Input variables
- `outputs.tf`: Output values

## Requirements
- Terraform >= 1.0
- Google Cloud SDK authenticated

# Terraform Best Practice Project Structure (GCP Example)

## Mô tả
Project mẫu triển khai hạ tầng GCP theo chuẩn best practice:
- Phân chia module, môi trường, template, script rõ ràng
- Dễ mở rộng, bảo trì, CI/CD

## Cấu trúc thư mục
```
terraform_create_GCP_vm/
├── .gitignore
├── README.md
├── envs/
│   ├── dev_center/
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   ├── dev_common/
│   │   ├── iam.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── terraform.tfstate
│   │   ├── terraform.tfstate.backup
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   ├── dev_node/
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── ssh_key.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   ├── prod_center/ (empty)
│   ├── prod_common/ (empty)
│   └── prod_node/ (empty)
├── global/
│   ├── providers.tf
│   └── versions.tf
├── modules/
│   ├── compute/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   │   └── README.md
│   └── network/
│       ├── main.tf
│       ├── outputs.tf
│       ├── variables.tf
│       └── README.md
├── scripts/
│   └── init.sh
├── templates/
│   ├── center_template.sh.tmpl
│   ├── cloud-init.yaml.tmpl
│   └── node_template.sh.tmpl
```

## Hướng dẫn sử dụng
1. Khai báo biến và backend cho từng môi trường trong `envs/<env>/`
2. Chạy script `scripts/init.sh` để init và validate
3. Deploy từng môi trường:
   ```bash
   cd envs/dev
   terraform apply
   ```

## Yêu cầu
- Terraform >= 1.0
- Đã cấu hình Google Cloud SDK và quyền truy cập
- Đã tạo bucket để lưu state

# Hướng dẫn quy trình SSH key và apply từng môi trường

1. **Triển khai resource chung (_common)**
   - Vào thư mục `envs/dev_common`:
     ```bash
     cd envs/dev_common
     terraform apply
     ```

2. **Lấy SSH public key của máy Windows (hoặc máy bạn muốn làm trung tâm quản lý)**
   - Copy nội dung file public key (ví dụ: `C:\Users\<user>\.ssh\id_rsa.pub`)

3. **Thêm SSH public key vào `terraform.tfvars` của _center**
   - Mở file `envs/dev_center/terraform.tfvars`
   - Gán biến `ssh_keys` với public key vừa copy:
     ```hcl
     ssh_keys = "ansible:ssh-rsa AAAA... user@host"
     ```

4. **Apply môi trường _center**
   - Vào thư mục `envs/dev_center`:
     ```bash
     cd envs/dev_center
     terraform apply
     ```

5. **Lấy SSH public key của _center (output sau khi apply)**
   - Sau khi apply, lấy public key của user ansible trên VM center (hoặc lấy từ output nếu có cấu hình output)

6. **Thêm SSH public key của _center vào `terraform.tfvars` của _node**
   - Mở file `envs/dev_node/terraform.tfvars`
   - Gán biến `ssh_keys` với public key vừa lấy từ _center:
     ```hcl
     ssh_keys = "ansible:ssh-rsa AAAA... ansible@center"
     ```

7. **Apply môi trường _node**
   - Vào thư mục `envs/dev_node`:
     ```bash
     cd envs/dev_node
     terraform apply
     ```

