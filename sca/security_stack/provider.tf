provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

terraform {
  required_providers {
    aws = "~> 2.59"
    template = "~> 2.1"
  }
}