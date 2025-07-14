# 🚀 Flask App on ECS Fargate using Terraform

This project deploys a containerized Flask application to AWS using ECS Fargate, Application Load Balancer (ALB), ECR, and Terraform.

---

## 🌐 Overview

This hands-on lab demonstrates Infrastructure as Code (IaC) to provision a highly available, containerized Flask application using the following AWS services:

- ✅ A Flask web app containerized with Docker  
- ✅ Amazon Elastic Container Registry (ECR) for storing the Docker image  
- ✅ Terraform modules to deploy:  
  - A custom VPC with public subnets  
  - Internet Gateway and Route Table  
  - Security Groups for ALB and ECS tasks  
  - Application Load Balancer (ALB)  
  - ECS Cluster with Fargate launch type  
  - ECS Task Definition and ECS Service  

---

## 🧱 Infrastructure Diagram

```text
User → ALB → ECS Fargate → Dockerized Flask App  
                    ↓  
               Image pulled from ECR
```

---

## 🛠️ Technologies Used

- **Terraform (v1.3.0+)**
- **AWS ECS (Fargate)**
- **AWS ECR**
- **AWS ALB**
- **Docker**
- **Flask (Python)**

---

## 🧪 Steps to Reproduce

1. **Clone the repo**  
2. **Build and push Docker image to ECR**  
   ```powershell
   docker build -t flask-app .
   aws ecr get-login-password | docker login --username AWS --password-stdin <your-account-id>.dkr.ecr.<region>.amazonaws.com
   docker tag flask-app <your-ecr-repo-uri>
   docker push <your-ecr-repo-uri>
   ```
3. **Set AWS credentials and variables in `terraform.tfvars`**  
4. **Deploy the infrastructure**  
   ```powershell
   terraform init
   terraform apply
   ```
5. **Test the deployment**  
   - Visit the DNS name from the `alb_dns_name` Terraform output
   - You should see: `Hello, World from Flask + Docker!`
6. **(Optional)** Trigger a redeploy from the ECS Console  
   - Go to your ECS Service  
   - Choose **"Force new deployment"**

---

## 🧼 Cleanup

To avoid AWS charges, destroy all infrastructure:
```powershell
terraform destroy
```

---

## ✅ Expected Result

You should see the message:

```
Hello, World from Flask + Docker!
```

This confirms your Dockerized Flask app was successfully deployed via ECS Fargate behind an ALB, and the image was pulled from ECR as defined by Terraform.
