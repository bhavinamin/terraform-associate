resource "aws_security_group" "foo" {
  name = var.sec_group_name
  

  dynamic "ingress" {
    for_each = var.ingress_ports
    iterator = port
    content {

      from_port   = port.value 
      to_port     = port.value 
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.sec_group_name
  }


}    