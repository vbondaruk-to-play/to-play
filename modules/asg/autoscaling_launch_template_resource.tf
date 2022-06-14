resource "aws_launch_template" "launch_template_devops" {
  name                   = "launch_template_devops"
  description            = "Launch template"
  instance_type          = var.instance_type
  ebs_optimized          = true
  update_default_version = true
  image_id               = data.aws_ami.amzlinux2.id
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      volume_size           = 20
      delete_on_termination = true
      volume_type           = "gp2"
    }
  }
  monitoring {
    enabled = true
  }
  tag_specifications {
    resource_type = "instance"
  }

}

