# configure aws provider
provider "aws" {
  region = "us-east-1"
  profile = "Meeka1-terraform"
}

# Stores the terraform file in s3
terraform {
  backend "s3" {
    bucket = "meeka1-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "Meeka1-terraform"
  }
}
