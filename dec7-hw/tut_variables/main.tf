provider "aws"{
    region = "us-east-1"
}

resource "aws_security_group" "allow_dns_http_tls" {
  name        = "allow_ports"
  description = "Allow inbound traffic from specific IP"
  

  ingress {
    description      = "dns"
    from_port        = 53
    to_port          = 53
    protocol         = "tcp"
    cidr_blocks      = ["${var.vpn-ip}/32"]
    
  }

    ingress {
    description      = "http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["${var.vpn-ip}/32"]
    
  }

    ingress {
    description      = "tls"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${var.vpn-ip}/32"]
    
  }


  tags = {
    Name = "allow_dns_http_tls"
  }
}