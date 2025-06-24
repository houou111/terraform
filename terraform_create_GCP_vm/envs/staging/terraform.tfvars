env         = "dev"

// Gán giá trị cho tất cả biến (kể cả biến trước đó có default) trong terraform.tfvars để dễ quản lý và chỉnh sửa sau này.
project_id  = "my-project-03062025-461807"
region      = "asia-southeast1"
zone        = "asia-southeast1-a"
ssh_keys    = "ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCy4VToAbs25ttaRA4Q0ijJZVz2XYgGolkGTiSCTjStHBW78Nnr618HfJz1KjD2pKM53S+qLWDOdEomoJ7UhqwxIMCtdXof1K5VBZNpBUnSkC0QspBpYXNNEhmnJ/GtKSbcO4wQoQCowBPuWCT0ujRfeIq++Nt/J4kIsOMakoI39/searUSijnRTeONn0BsWRr9pVnnPgyHpMpgmbMxyxwU2GeikKCbz+/iqYuf7f3rOWt7UEUuOJgHMrd+Tizhu2N+93JKoTHcltAlVE+zyjqNtdD1WNgZufXfqCCsJCiKL4jB05fq5yvj1EV+ccQaPu8x9cE01XWZZVelFLgyDSQUXEnv1vweKp+kKhDzr/qIqsQcHtJOcN1WYI7qGUPUIc4wwehG6yvCXknT7VatJnIhHulGaAvaDLLSKlg4OjAPV7nX0aiZu9lYMPxziyK30p06Zk4jIhyfylqvFPmgzGmM1gHps0CsDfCeRVuQvtpFDs4jsRlTDhgiurk1Z3P1Ozs= ansible@center"
machine_type = "e2-medium"
image       = "centos-cloud/centos-stream-9-v20250513"
disk_size   = 50
vm_names     = ["node1", "node2", "node3"]
project_number = "967433611336"
