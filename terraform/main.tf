provider "aws" {
  region  = "us-east-1"
  profile = "nicolas-devops"
}

module "instance" {
  source        = "./modules/instance"
  sg_name       = var.sg_name
  ingress_rules = var.ingress_rules
  tags          = var.tags
  ami_id        = var.ami_id
  instance_type = var.instance_type
}