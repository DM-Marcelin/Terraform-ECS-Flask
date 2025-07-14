variable "aws_region" {
  description = "AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "ecr_repo_name" {
  description = "Name of the ECR repo"
  type        = string
  default     = "flask-app-repo"
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "flask-ecs-cluster"
}
variable "execution_role_arn" {
  description = "ARN of the ECS task execution role"
}

variable "task_role_arn" {
  description = "ARN of the ECS task role"
}
variable "vpc_id" {
  type = string
}

variable "public_subnet_ids" {
  type = list(string)
}
