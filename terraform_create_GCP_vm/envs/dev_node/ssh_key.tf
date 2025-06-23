resource "tls_private_key" "ansible" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "ansible_private_key" {
  content  = tls_private_key.ansible.private_key_pem
  filename = pathexpand("~/.ssh/id_rsa_ansible")
  file_permission = "0600"
}

output "ansible_public_key" {
  value = "ansible:${tls_private_key.ansible.public_key_openssh}"
  description = "SSH public key cho user ansible, dùng để inject vào VM."
}
