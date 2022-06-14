# Team to use
variable "division" {
  description = "Define a division(team)"
  type        = string
}
# Environment to use
variable "environment" {
  description = "Define environment to use"
  type        = string
}
# Instance type
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}
# Availability zones
variable "availability_zones" {
  description = "VPC availability zones"
}
