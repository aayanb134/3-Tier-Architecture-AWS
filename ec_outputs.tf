# Public EC2

output "ec2_bastion_public_instance_ids" {
  description = "ID of the EC2 Instance"
  value       = module.ec2_public.id
}

output "ec2_bastion_public_ip" {
  description = "Public IP Address assigned to the instance"
  value       = module.ec2_public.public_ip
}

# Private EC2

output "ec2_private_instance_ids" {
  description = "ID of the EC2 Instance"
  # value = module.ec2_private.id
  value = [for ec2private in module.ec2_private : ec2private.id]
}

output "ec2_private_ip" {
  description = "Public IP assigned to the instance"
  # value = module.ec2_private.public_ip
  value = [for ec2private in module.ec2_private : ec2private.private_ip]
}