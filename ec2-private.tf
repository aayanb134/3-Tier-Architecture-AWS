module "ec2-instance" {
  depends_on = [module.vpc]
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = "5.3.1"

  for_each = toset(["0", "1"])
  name     = "${var.environment}-vm"

  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.private_sg.this_security_group_vpc_id]
  subnet_id              = element(module.vpc.private_subnets, tonumber(each.key))
  tags                   = local.common_tags
}