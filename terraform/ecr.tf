resource "aws_ecr_repository" "flask_app" {
  name                 = "ecs-flask-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "Flask App ECR"
    Environment = "dev"
  }
}
