terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.36.0, <4.47.0, !=4.43.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = "~>1.6.0"
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
  assume_role {
    role_arn     = "arn:aws:iam::189494931186:role/Sandbox_AdministratorAccess_Role"
    session_name = "Sandbox"
  }
  default_tags {
    tags = var.tags
  }
}





