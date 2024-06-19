# Configure the AWS Provider
provider "aws" {
  region = "us-west-2" # You can change this to your desired region
}

# Define a terraform block with required providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }

  required_version = ">= 0.12"
}
