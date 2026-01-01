resource "aws_instance" "web" {
  ami                    = "ami-0aeeebd8d2ab47354" # Amazon Linux 2
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group_id]

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "Terraform-Nginx-Server"
  }
}
