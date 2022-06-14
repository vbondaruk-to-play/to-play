module "nlb" {
  source             = "terraform-aws-modules/alb/aws"
  version            = "~> 6.4.0"
  name_prefix        = "nlb"
  load_balancer_type = "network"
  vpc_id             = module.vpc.vpc_id
  subnets            = module.vpc.public_subnets

  #  TCP Listener
  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "TCP"
      target_group_index = 0
    }
  ]

  # Target Groups
  target_groups = [
    {
      name_prefix          = "app1-"
      backend_protocol     = "TCP"
      backend_port         = 31555
      target_type          = "instance"
      deregistration_delay = 10
    },
  ]
  tags = local.common_tags
}
