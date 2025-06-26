resource "tls_private_key" "ansible" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "ansible_private_key" {
  content  = tls_private_key.ansible.private_key_pem
  filename = pathexpand("~/.ssh/id_rsa_ansible")
  file_permission = "0600"
}
