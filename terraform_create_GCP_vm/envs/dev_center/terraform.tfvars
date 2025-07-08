// Gán giá trị cho tất cả biến (kể cả biến trước đó có default) trong terraform.tfvars để dễ quản lý và chỉnh sửa sau này.
project_id  = "my-project-03062025-461807"
region      = "asia-southeast1"
zone        = "asia-southeast1-a"
ssh_keys    = "ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQD6HV4YwBho3MuveHORex2Fm39245IqZ5jqRvwwbu3mVm39tFwidsh1pQq6uN+RsCsX/asUCMYvSOiBS6wLd9ET8FPgmXNV1tkmLPW7WRJbD1GAn62tM9gQAJDvIrgC7rXi4JTKVDNTDtWmbXxszXs/eOpoO9/2zOYPQW3QwTJ1M73YLwZYdAajzQq8fg/BfveU48UcDVP5+xQuMEUTJvK0erBLqkU/cQ+Ob0iORFcJyK2VzgWfKvpUwMGrKrqA/jM0HegmslgRBv5vgYhbKCBYR1ptizUqw3LAuGQU/X1WdbdtGLv+pg/Cojl7H9VnZxfYIaRHBHenxviXx6L5GVqZXg6Wa0gK1Y16DRIFwFflv0P4RH8SZSoZUT7YfOFpMg6Vtr+ryP+rUniOKPKwJ6Iq2Gse0eqjmv9eXMJb9Q0UU0mhrGFkarlEV2UByp9+nN1ddc6ZyvBBAxEdi4gWgsJszEcGuSZbo2ltWTKd0LiEBQg8v/XfAvl5Dlik/6OLJN5dwojAgv3rJZa6XPuN7r7ONvxGQ4/UqORpExwhroQjPT+5CHTJZ4a4ml56rpKkziaxpAy/k2FyaKLUtVf22eO5xCY2B0pDUnJNzFYv0KS6UIuN6hBbJbDvKKrKRWv+XOhQBjEdsJyzb5X2x8yLu1wE54evBnB1YbtnkWZuW4ePiw== jbsv\\duongpk@JB-IT-Duongpk-L"
machine_type = "e2-medium"
image       = "centos-cloud/centos-stream-9-v20250513"
disk_size   = 50
vm_names     = ["center2"]
project_number = "967433611336"
network_name = "dev-shared-network"
dev_vm_resource_policy_self_link = "projects/my-project-03062025-461807/regions/asia-southeast1/resourcePolicies/dev-vm-auto-schedule"
