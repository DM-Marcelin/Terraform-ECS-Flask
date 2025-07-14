aws_region       = "us-east-1"
ecr_repo_name    = "flask-app-repo"
ecs_cluster_name = "flask-ecs-cluster"
execution_role_arn = "arn:aws:iam::007160697038:role/ecsTaskExecutionRole-For-Lab"
task_role_arn      = "arn:aws:iam::007160697038:role/ecsTaskExecutionRole-For-Lab"
vpc_id = "vpc-0dabf151a79f54e68"

public_subnet_ids = [
  "subnet-09e673f8bbb010ae5",
  "subnet-0e4b782148b318314"
]
