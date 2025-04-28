terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "inmatic-terraform-wztk6ymqinw7-eu-west-2"
    key = "website-twitter.pl.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = local.region
}
