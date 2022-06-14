resource "aws_autoscaling_schedule" "scale_down_all" {
  scheduled_action_name  = "decrease-capacity-6pm"
  min_size               = 0
  max_size               = 10
  desired_capacity       = 0
  recurrence             = "00 18 * * FRI-SUN"
  time_zone              = "CET"
  autoscaling_group_name = aws_autoscaling_group.asg_devops.id
}
resource "aws_autoscaling_schedule" "scale_up_all" {
  scheduled_action_name  = "increase-capacity-8am"
  min_size               = 2
  max_size               = 10
  desired_capacity       = 2
  recurrence             = "00 8 * * MON-FRI"
  time_zone              = "CET"
  autoscaling_group_name = aws_autoscaling_group.asg_devops.id
}
