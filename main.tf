provider "aws" {
  region = "us-west-2"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

module "my-modules" {
    source = "git::https://github.com/HakeemYB/eks-terra-mod.git//eks"

    region = "us-west-2"
    
    eks_cluster = "eks"
    
}