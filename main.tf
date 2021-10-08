terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 0.14"

  backend "remote" {
    organization = "fedepazos"

    workspaces {
      name = "aws-ecs-base-infra"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}
