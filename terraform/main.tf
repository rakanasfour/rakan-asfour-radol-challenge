provider "aws" {
  region = "us-east-2"
}
module "vpc" {
  source      = "./modules/vpc"
  cidr_block  = "10.0.0.0/16"
  subnet_count = 2
}

module "rds" {
  source = "./modules/rds"
  username = var.username
  password = var.password
}

output "db_instance_endpoint" {
  value = module.rds.db_instance_endpoint
}

module "ecr" {
  source = "./modules/ecr"
}


module "eks" {
  source         = "./modules/eks"
  cluster_name   = "rakan-cluster"
  cluster_role_arn = module.eks.cluster_role_arn
  subnet_ids     = module.vpc.subnet_ids
}
