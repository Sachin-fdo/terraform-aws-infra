variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "my_ip" {
  description = "Your public IP for SSH access"
  default     = "83.64.155.206"
}

variable "ami_id" {
  description = "AMI ID for Ubuntu 22.04"
  default     = "ami-0aeeebd8d2ab47354" # Update for your region if needed
}

variable "key_name" {
  description = "EC2 key pair name"
  default     = "ec2-keypair"
}

variable "s3_bucket_name" {
  description = "Name of S3 bucket"
  default     = "my-example-cloud-project-terra-infra-eu-aut-1" # Replace with unique name
}

