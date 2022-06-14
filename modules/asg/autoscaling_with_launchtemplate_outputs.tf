# Launch Template Outputs
output "launch_template_id" {
  description = "Launch Template ID"
  value       = aws_launch_template.launch_template_devops.id
}
# Launch_template_latest_version
output "launch_template_latest_version" {
  description = "Launch Template Latest Version"
  value       = aws_launch_template.launch_template_devops.latest_version
}
# Autoscaling Outputs
output "autoscaling_group_id" {
  description = "Autoscaling Group ID"
  value       = aws_autoscaling_group.asg_devops.id
}
# Autoscaling_group_name
output "autoscaling_group_name" {
  description = "Autoscaling Group Name"
  value       = aws_autoscaling_group.asg_devops.name
}
# Autoscaling_group_arn
output "autoscaling_group_arn" {
  description = "Autoscaling Group ARN"
  value       = aws_autoscaling_group.asg_devops.arn
}
