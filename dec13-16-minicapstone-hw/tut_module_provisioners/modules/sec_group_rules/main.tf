locals {
        http_port = 80 
        ssh_port = 22
}  

resource "aws_vpc_security_group_ingress_rule" "http_ingress_rule" {
  security_group_id = var.sec_group_id 
  from_port   = local.http_port
  ip_protocol = "tcp"
  to_port     = local.http_port
  cidr_ipv4 = var.cidr_ipv4
}

resource "aws_vpc_security_group_ingress_rule" "ssh_ingress_rule" {
  security_group_id = var.sec_group_id 
  from_port   = local.ssh_port
  ip_protocol = "tcp"
  to_port     = local.ssh_port
  cidr_ipv4 = var.cidr_ipv4
}

resource "aws_vpc_security_group_egress_rule" "egress_rule" {
  security_group_id = var.sec_group_id 
  ip_protocol = "-1"
  from_port = "0"
  to_port = "0"
  cidr_ipv4 = "0.0.0.0/0"
}


