module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.3.1"

  name = "${var.environment}-BastionHost"
  # instance_count = 5

  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  # monitoring             = true
  vpc_security_group_ids = [module.public_bastion_sg.this_security_group_vpc_id]
  subnet_id              = module.vpc.public_subnets[0]
  user_data              = file("${path.module}/webapp.sh")

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
