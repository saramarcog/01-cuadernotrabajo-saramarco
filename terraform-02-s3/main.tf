terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket_aula" {
  bucket = "aws-lab-cuaderno1-sara"

  tags = {
    Name = "terraform-s3-aula"
  }
}