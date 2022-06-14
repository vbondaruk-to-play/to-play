# Define Local Values in Terraform
locals {
  owners      = var.division
  environment = var.environment
  name        = "${var.division}-${var.environment}"
}