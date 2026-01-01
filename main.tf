module "security" {
  source          = "./modules/security"
  allowed_ssh_ip  = var.allowed_ssh_ip
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "my-example-cloud-project-terra-infra-eu-aut-1"
}

module "ec2" {
  source            = "./modules/ec2"
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_group_id = module.security.web_sg_id
}

module "alb" {
  source            = "./modules/alb"
  security_group_id = module.security.web_sg_id
  instance_id       = module.ec2.instance_id
}
