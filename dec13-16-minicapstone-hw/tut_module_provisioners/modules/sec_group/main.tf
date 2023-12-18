resource "aws_security_group" "sg" {
  name        = var.sec_group_name
  description = var.sec_group_description
  tags = {
    Name = var.sec_group_name
    }
  lifecycle {
     create_before_destroy = true
  }
}