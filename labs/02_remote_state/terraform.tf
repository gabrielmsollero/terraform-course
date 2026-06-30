terraform {
  backend "s3" {
    bucket       = "gabriel-remote-state-test-bucket"
    key          = "prd/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    profile      = "terraform"
  }
}
