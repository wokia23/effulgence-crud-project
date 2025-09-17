terraform {
  backend "s3" {
    bucket         = "effulgencetech-projectcrud-bucket-wok001"
    region         = "us-east-1"
    key            = "effulgencetech-inf/jenkins-server/terraform.tfstate"
    dynamodb_table = "effulgencetech-projectcrud-lock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}