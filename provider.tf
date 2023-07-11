terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.27"
    }
  }
}



provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIARUEMFSU6BSCLDKUQ"
  secret_key = "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"
}

