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
├── envs/
│   ├── dev/
│   ├── staging/
│   └── prod/
├── modules/
│   ├── network/
│   └── compute/
├── templates/
├── global/
├── scripts/
├── .gitignore
└── README.md
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

