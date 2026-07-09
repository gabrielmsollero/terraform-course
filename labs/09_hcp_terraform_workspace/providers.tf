terraform {
  required_version = "~> 1.12.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  cloud {
    organization = "gabriel-sollero-org"
    workspaces {
      name = "demo-workspace"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Managed_By = "Terraform"
      Project    = "Terraform Training"
    }
  }
}
