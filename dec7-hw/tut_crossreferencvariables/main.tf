provider aws {
    region = "us-east-1"
}

resource "aws_eip" "lb" {
    domain = "vpc"
}


resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
    
  }
  tags = {
    Name = "allow_http"
  }
}