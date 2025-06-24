// Gán giá trị cho tất cả biến (kể cả biến trước đó có default) trong terraform.tfvars để dễ quản lý và chỉnh sửa sau này.
project_id  = "my-project-03062025-461807"
project_number = "967433611336"

region      = "asia-southeast1"
zone        = "asia-southeast1-a"

vm_names     = ["node1", "node2"]
machine_type = "e2-medium"
image       = "centos-cloud/centos-stream-9-v20250513"
disk_size   = 50
network_name = "dev-shared-network"
dev_vm_resource_policy_self_link = "projects/my-project-03062025-461807/regions/asia-southeast1/resourcePolicies/dev-vm-auto-schedule"
// Get ssh_key after create center
ssh_keys    = "ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDE2TFDrt+byM2rkZsADGWZ562SkiZVknuwop28CfSwEkdcP9zBB/HytbEkJ3evS9m321WipviLu0iRZjkukphEUeFwirNjMEeLraZMARqtP54RTqmbojdLVopHqOnL9io5R9f5Lbw1nxM34litgvgsZcNQwCitZm6JytoMYV3yyyudQmReWOXyHwk69bmehPPRFeTuwNOyCUmb7/1cOcAvfcD1uwzZAZ4FRgKjlzhKsZk5WihP4t9XWS1j6KxG2Pc9JROceV6lVSQsi0bJU+VzYCrGwkBOuqqa6vPNfbDYO/JVqWhGderLaDmbAT/smr1wxuc+nWCBGGwz67FPSfqjXqT8HFfvGHf5WcOZiJqHvyN2aCqZiLYriBo5dzSu8nfHnSiM1GTu9hTsAUDFk4StBB0fxRq2Hah/VIKr+pHzNX26LvzTkCzrS2yIUlW4fXaYWqnSgxYFqd/qDj76qkRnoEbu5SB59+bXbZxk6Qbg7FcAdzS8GXjFk+rMqRTDpHqUqjQRBGd3/gEpX+eeCrCnplEvhw5ZMY0R3U6B9wotjvfNTUmVcPMPWkei3msBwkBdUPMfU2kMT/+aSau15Sa2TaZMHGAdzW5jjKXngnKRGOKvUoVkK8HoNhhDroA4AFnG39fDG8KnAxnr+0IxykoaZHmt5FSQB4/xypeSCCswPw== ansible@center2"
