provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

terraform {
  required_providers {
    aws    = "~> 3.0"
    random = "~> 2.2"
  }
}
