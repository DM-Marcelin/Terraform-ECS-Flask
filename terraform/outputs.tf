output "ecr_repo_url" {
  value = aws_ecr_repository.flask_app.repository_url
  description = "URL of the ECR repository"
}
