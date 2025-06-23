terraform {
  backend "gcs" {
    bucket  = "terraform_bucket_example"
    prefix  = "dev_center/state"
  }
}
