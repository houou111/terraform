terraform {
  backend "gcs" {
    bucket  = "terraform_bucket_example"
    prefix  = "prod_node/state"
  }
}
