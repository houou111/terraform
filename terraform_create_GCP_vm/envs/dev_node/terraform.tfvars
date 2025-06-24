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
ssh_keys    = "ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDxrfdcKnWRrugISTdY643UfEaZuHH3yEqPjpTgcRiAbMteDyazwsZL/pOeGaMal0JXgIwVioiVS7MRlvkDP6u0PpnqHDoPRYpEnEQa3RovEAOI9xQuAt9r6vbXBZKqvO4UoWEek1bJexmEq6V4cfd/bi5lLIaklniiAmXlztfjFRkMWz/SpA8iDu4wf3F7QGmueDBBMVYcfcouLxfv45OdGxWMu2CjZGYe1ki92sUoM9a5nPk9Zi23ikPTOIHFZ/UPQXJX78LygudXM8azoZkWqYmcQdnH3dK/tdIGTz9KKS7hzXWXCx0z+o8J0eX6hjIFExNpnE8Dy4J/kc9qUbnkp5pMzy/csbJS5GJd1iTmy3bPDGrTgUahqCzND24r0GDCrfuQMg/UFRQkKl53VvAE6w1O6gLvl/1h15st/Rf1wtBBtQZuy4OG1d6H3wMme4N7y0YssO4I9Sf6KxcbgL4qvlVjXlKm13cOUWxrD0NxNmz1THp7cQOyw4UhqJqWN12NDIvPhGpVkzKUBLqMny6IolwG0jSwdg0Jdx0C6/AuhdsT2VG0oc2+GEvf3sl581JZ9Kdk0VCmzk5MRUPt9sIu27uN7StbQp4q26HVl3IQ9mDE5gJfYxhkPlDd6JGJtSsvS+43EsfjACtSf8HfShcNqd1uGnnG36zF5Ol3ttOnvQ== ansible@center2"
