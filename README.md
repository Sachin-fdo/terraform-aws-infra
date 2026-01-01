# Terraform AWS Infrastructure – NGINX Web Server

This project provisions a complete AWS infrastructure using **Terraform**, following **production-grade DevOps best practices**.  
It deploys an **NGINX web server on EC2**, serves content from **Amazon S3**, and exposes the application through an **Application Load Balancer (ALB)**.

The repository is structured using **Terraform modules** for scalability, reusability, and maintainability.

---

## Architecture Overview

---

## Features

- Infrastructure as Code (IaC) using **Terraform**
- Modular Terraform design
- EC2 instance with **NGINX installed via user_data**
- Static website content stored in **Amazon S3**
- **Application Load Balancer** for traffic routing
- Secure **Security Groups** (SSH + HTTP)
- Outputs public endpoints automatically
- Ready for Auto Scaling, HTTPS, and CI/CD extensions

---

## Technologies Used

- **Terraform v1.4+**
- **AWS EC2**
- **Amazon S3**
- **Application Load Balancer**
- **NGINX**
- **Amazon Linux 2**
- **AWS IAM**
- **AWS CLI**

---

## Project Structure

| Path | Description |
|-----|------------|
| `modules/ec2` | EC2 instance, NGINX setup, user_data |
| `modules/alb` | Application Load Balancer & Target Groups |
| `modules/s3` | S3 bucket and website content |
| `modules/security` | Security groups and network rules |
| `main.tf` | Root module wiring |
| `provider.tf` | AWS provider configuration |
| `variables.tf` | Input variables |
| `outputs.tf` | Exported outputs |
| `terraform.tfvars` | Environment-specific values |

---

## Prerequisites

- AWS account
- Terraform installed
- AWS CLI configured
- SSH key pair access

```bash
terraform -v
aws sts get-caller-identity


---

## `.gitignore` (Important)

```gitignore
.terraform/
*.tfstate
*.tfstate.backup
terraform.tfvars
*.pem
