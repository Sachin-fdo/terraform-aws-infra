variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "ec2-keypair"
}

variable "allowed_ssh_ip" {
  description = "Your public IP for SSH access"
  type        = string
}
