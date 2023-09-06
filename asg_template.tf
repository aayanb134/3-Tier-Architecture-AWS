resource "aws_launch_template" "asg_launch_template" {
  name = "asg_launch_template"

  image_id = data.aws_ami.amzlinux2.id

  instance_type = var.instance_type

  key_name = var.instance_keypair

  # monitoring {
  #   enabled = true
  # }

  placement {
    availability_zone = module.vpc.public_subnets[0]
  }

  vpc_security_group_ids = [module.public_bastion_sg.this_security_group_id]


  user_data = filebase64("webapp.sh")

  tag_specifications {
    resource_type = "instance"

    tags = {
      Terraform   = "true"
      Environment = "dev"
    }
  }
}
