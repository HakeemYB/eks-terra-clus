provider "aws" {
  region = "ap-south-1"
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

    region = "ap-south-1"
    
    eks_cluster = "eksclusterdemo"

   

    
    
}