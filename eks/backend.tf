terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "mernmani"
    region         = "ap-south-1"
    key            = "mern"
    dynamodb_table = "mern"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
