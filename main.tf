module "vpc" {
  source                     = "./vpc"
  vpc_cidr_block             = var.vpc_cidr_block
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  availability_zones         = var.availability_zones

}

module "ec2_web_server" {
  source = "./ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  instance_name = "web-server"  
  subnet_id = module.vpc.public_subnets[0]
}


module "ec2_app_server" {
  source = "./ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  instance_name = "app-server"  
  subnet_id = module.vpc.private_subnets[0]
}

module "rds" {
  source = "./rds"
  private_subnets = module.vpc.private_subnets
  allocated_storage    = var.allocated_storage
  
}