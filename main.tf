terraform {
  backend "s3" {
    bucket = "dearie-terraform"
    key    = "aws-org/prod"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
