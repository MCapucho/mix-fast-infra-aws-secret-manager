terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.17.0"
    }
  }

  backend "s3" {
    bucket = "fiap-mixfast-s3-bucket-secrets-manager"
    key    = "mixfast-infrastructure"
    region = "us-east-1"
  }
}