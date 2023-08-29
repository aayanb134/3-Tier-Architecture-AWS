module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"

  # VPC Details
  name            = "${local.name}-${var.vpc_name}"
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets

  # DB Subnets
  database_subnets                       = var.vpc_database_subnets
  create_database_subnet_group           = var.vpc_create_database_subnet_group
  create_database_internet_gateway_route = var.create_database_internet_gateway_route

  # Configure NAT Gateway
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  # Configure DNS Parameters for VPC
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags     = local.common_tags
  vpc_tags = local.common_tags

  # Public, Private and DB Subnet Tags
  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }
  database_subnet_tags = {
    Type = "Private Database Subnets"
  }
}
