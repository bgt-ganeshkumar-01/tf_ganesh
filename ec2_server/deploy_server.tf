provider "aws" {
  region = "us-east-1"  # Change to your required region
}

resource "aws_instance" "microservice_instance" {
  count                = var.instance_count
  ami                  = var.ami_id
  instance_type        = "t3.medium"
  key_name             = var.key_pair
  subnet_id            = var.subnet_id
  vpc_security_group_ids = var.security_groups
  iam_instance_profile = "NOV-PRD-FeedArchiveToS3-InstanceProfile-Classic"  # Use existing profile

  root_block_device {
    volume_size = var.ebs_c_size
    volume_type = "gp3"
    delete_on_termination = true
  }

  ebs_block_device {
    device_name = "/dev/sdb"
    volume_size = var.ebs_d_size
    volume_type = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name         = var.instance_name
    Project      = var.project
    map-migrated = var.map_migrated
    Owner        = var.owner
    TeamOwner    = var.team_owner
    Platform     = var.platform
    ProductName  = var.product_name
  }
}
