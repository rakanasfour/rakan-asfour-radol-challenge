module "vpc" {
  source      = "./modules/vpc"
  cidr_block  = "10.0.0.0/16"
  subnet_count = 2
}

module "eks" {
  source         = "./modules/eks"
  cluster_name   = "rakan-cluster"
  cluster_role_arn = module.eks.cluster_role_arn
  subnet_ids     = module.vpc.subnet_ids
}

module "rds" {
  source            = "./modules/rds"
  db_name           = "my-mysql-db"
  username          = "root"
  password          = "Password"
  subnet_ids        = module.vpc.subnet_ids
  security_group_id = module.rds.security_group_id  
}

module "ecr" {
  source = "./modules/ecr"
}
