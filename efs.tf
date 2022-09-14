resource "aws_security_group" "efs" {
  description = "${var.service_name} EFS"
  vpc_id      = var.vpc_id
}

resource "aws_efs_file_system" "efs" {
  creation_token = var.service_name

  tags = {
    Name = "${var.service_name}"
  }
}

resource "aws_efs_mount_target" "efs" {
  for_each        = toset(var.private_subnet_ids)
  file_system_id  = aws_efs_file_system.efs.id
  subnet_id       = each.key
  security_groups = [aws_security_group.efs.id]
}
