# Output values for VPC

# VPC ID
output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

# VPC CIDR Blocks
output "vpc_cidr_block" {
  description = "VPC CIDR Block"
  value       = module.vpc.vpc_cidr_block
}

# Public Subnets
output "public_subnets" {
  description = "IDs of the public subnets"
  value       = module.vpc.vpc_public_subnets
}

# Private Subnets
output "private_subnets" {
  description = "IDs of the private subnets"
  value       = module.vpc.vpc_private_subnets
}

# NAT Gateway IP
output "nat_public_ips" {
  description = "List of Public Elastic IPs associated with NAT Gateway"
  value       = module.vpc.vpc_nat_public_ips
}

# VPC AZs
output "azs" {
  description = "List of Availability Zones specified as arguments for this module"
  value       = module.vpc.vpc_azs
}
