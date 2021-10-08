### Network

# Fetch AZs in the current region
data "aws_availability_zones" "available" {}

resource "aws_vpc" "main" {
  cidr_block = var.environment_cidr[terraform.workspace]

  tags = {
    Name        = "vpc-${var.vpc_name[terraform.workspace]}"
    Environment = terraform.workspace
  }
}
