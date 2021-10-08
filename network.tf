### Network

resource "aws_ecs_cluster" "cluster" {
  name = "cluster-example-${terraform.workspace}"

  tags = {
    Environment = terraform.workspace
  }
}
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name        = "vpc-example-${terraform.workspace}"
    Environment = terraform.workspace
  }
}
