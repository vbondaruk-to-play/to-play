# Autoscaling Group Resource
resource "aws_autoscaling_group" "asg_devops" {
  name                      = local.name
  desired_capacity          = 2
  max_size                  = 10
  min_size                  = 2
  availability_zones        = var.availability_zones
  health_check_type         = "EC2"
  health_check_grace_period = 300 # default is 300 seconds
  launch_template {
    id      = aws_launch_template.launch_template_devops.id
    version = aws_launch_template.launch_template_devops.latest_version
  }
  # Instance Refresh
  instance_refresh {
    strategy = "Rolling"
    preferences {
      min_healthy_percentage = 50
    }
    triggers = ["desired_capacity"]
  }
}
