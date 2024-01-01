terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0, < 6.0"
    }
  }
  backend "s3" {
    bucket         = "my-super-unique-terraform-state-bucket"
    key            = "ecs-cluster.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-up-and-run-locks"
  }
}