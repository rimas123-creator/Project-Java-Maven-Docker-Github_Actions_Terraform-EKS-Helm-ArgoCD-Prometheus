terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "demo-myapp-state-s3-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "terraform-eks-state-locks"
    use_lockfile = true
    encrypt      = true
  }
}

provider "aws" {
  region = var.region
}