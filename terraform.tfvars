# Common variables
aws_region  = "us-east-1"
environment = "dev"
division    = "devops"

# VPC Variables
vpc_name               = "vpc_dev"
vpc_cidr_block         = "10.0.0.0/16"
vpc_availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
vpc_public_subnets     = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
vpc_private_subnets    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
vpc_enable_nat_gateway = true
vpc_single_nat_gateway = true

# ASG Variables
instance_type = "t3.micro"