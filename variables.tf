variable "aws_region" {
  description = "AWS Region to run manifest"
  type = string
}

variable "division" {
  description = "Define a division(team)"
  type = string
  default = "DevOps"
}

variable "environment" {
  description = "Define environment to use"
  type = string
  default = "dev"
}

# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type = string 
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string 
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type = list(string)
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
}

# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type = bool
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
}
# Instance type
variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
}
