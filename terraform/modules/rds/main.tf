resource "aws_db_instance" "mysql" {
  allocated_storage       = var.allocated_storage
  engine                  = "mysql"
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  db_name                 = var.db_name
  username                = var.username
  password                = var.password
  parameter_group_name    = var.parameter_group_name
  db_subnet_group_name    = var.db_subnet_group_name
  vpc_security_group_ids  = var.vpc_security_group_ids
  skip_final_snapshot     = var.skip_final_snapshot
  publicly_accessible     = var.publicly_accessible
  multi_az                = var.multi_az
  storage_encrypted       = var.storage_encrypted
  backup_retention_period = var.backup_retention_period
}

resource "aws_db_subnet_group" "default" {
  name       = var.db_subnet_group_name
  subnet_ids = ["subnet-0956cddd9fcc15972", "subnet-0bb5fd2a9998cd95c","subnet-0b3a717d0f1646242"]  

  tags = {
    Name = "Default subnet group"
  }
}
