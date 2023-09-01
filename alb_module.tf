module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "8.7.0"

  depends_on = [module.vpc, module.ec2_public, module.public_bastion_sg]

  name = var.alb_name

  load_balancer_type = var.alb_load_balancer_type

  vpc_id          = module.vpc.vpc_id
  subnets         = module.vpc.public_subnets
  security_groups = toset([module.public_bastion_sg.this_security_group_id])

  target_groups = [
    {
      name_prefix      = var.alb_target_group_name_prefix
      backend_protocol = var.alb_target_group_backend_protocol
      backend_port     = var.alb_target_group_backend_port
      target_type      = var.alb_target_group_target_type
      targets = {
        my_target = {
          target_id = module.ec2_public.id
          port      = var.alb_target_group_targets_my_target_port
        }
      }
    }
  ]

  http_tcp_listeners = [
    {
      port               = var.alb_http_tcp_listeners_port
      protocol           = var.alb_http_tcp_listeners_protocol
      target_group_index = 0
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
