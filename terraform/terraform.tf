terraform {
  # required_version = "~> 1.0.2"

  backend "s3" {
    bucket = "demo-backstage-toanla"
    key    = "tf-state.json"
    region = "us-east-1"
    workspace_key_prefix = "environment"
  }  

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.44.0"
    }
  }
}
