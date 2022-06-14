module "vpc" {
  source                 = "./modules/vpc"
  division               = var.division
  environment            = var.environment
  vpc_name               = var.vpc_name
  vpc_cidr_block         = var.vpc_cidr_block
  vpc_availability_zones = var.vpc_availability_zones
  vpc_public_subnets     = var.vpc_public_subnets
  vpc_private_subnets    = var.vpc_private_subnets
  vpc_enable_nat_gateway = var.vpc_enable_nat_gateway
  vpc_single_nat_gateway = var.vpc_single_nat_gateway

}

module "asg" {
  source             = "./modules/asg"
  division           = var.division
  environment        = var.environment
  instance_type      = var.instance_type
  availability_zones = var.vpc_availability_zones
}