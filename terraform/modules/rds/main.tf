resource "aws_db_subnet_group" "my_db_subnet_group" {
  name       = "${var.db_name}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.db_name} DB Subnet Group"
  }
}

resource "aws_db_instance" "mysql" {
  identifier              = var.db_name
  allocated_storage        = 20
  storage_type            = "gp2"
  engine                 = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  db_subnet_group_name    = aws_db_subnet_group.my_db_subnet_group.name
  vpc_security_group_ids   = [var.security_group_id]
  username                = var.username
  password                = var.password
  db_name                 = var.db_name
  skip_final_snapshot     = true

  tags = {
    Name = "MySQL Database"
  }
}

output "db_instance_id" {
  value = aws_db_instance.mysql.id
}
