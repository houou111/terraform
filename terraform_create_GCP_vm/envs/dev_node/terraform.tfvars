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
ssh_keys    = "ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCo9IpLsxAIEgAYUnGk5st2WByTiBU+bhX7lnIBCcaytpSxuh7XUlLQ6yZTy8EsOcZMqmFC4W7ykPaM8yHQft51+d9emuYOdR3+AftKom6qCYhjTI0MN4JksJ+GFyPSQn1v/K/2iMVkswSFLhsxmucXXfVhqM40d759EeTEP8w5ZvJQgCQ+Z2avQb0YyO4XXImVup/rcKvdD7eRxbx8Z1P6jkdB7l0E0B/Zltci21E9pRSFXaTf/bHwRBxfjXv9RGmnyRqllFh1QEnahhVrH1wnGOu7z/CY49LmEUvszSqlsmzPQshlalx2pKkfHWAIrrr3Q52qbApwJ5fGMWITPhmKbJHS/2kkurI2OuANOvbZycfi/88bqjzEAZWUILbgm7189y/LfERzH8ZXrmmigJyQWewl3xpcB5sSrHS1TUSHyj0yzECPUobfvoDb9+ZFvQ4qI7pNosD+Q1Ox6LHqLRqGbAJZohutTF1N0/SRUTdru77UpzuVt8rlsifbw9QHumyNwKnwSujwvy+TCXfYCwdcrvA1x4KmiWtCaU8M1vvOdu//P820SYhivRVzZNIaY2fvD/E3HztX1cER49MiVjwowAidVcbvVSw6zavtF8q5ggMQ+ZHZ+Fhf4cyDAeBzfLh/hqPd4k/1M7nRs3YV9huJ4hSkVCr5WS407/4CBLFN0Q== ansible@center2"