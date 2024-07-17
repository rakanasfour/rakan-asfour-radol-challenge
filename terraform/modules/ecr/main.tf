resource "aws_ecr_repository" "frontend" {
  name = "frontend"
}

resource "aws_ecr_repository" "backend" {
  name = "backend"
}

resource "aws_ecr_repository" "mysql" {
  name = "mysql-db"
}

output "frontend_repository_url" {
  value = aws_ecr_repository.frontend.repository_url
}

output "backend_repository_url" {
  value = aws_ecr_repository.backend.repository_url
}

output "mysql_repository_url" {
  value = aws_ecr_repository.mysql.repository_url
}
