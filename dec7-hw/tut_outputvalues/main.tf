provider "aws" {
    region = "us-east-1"
}

resource "aws_eip" "vpc" {
    domain = "vpc"
}

output "all" {
    value = aws_eip.vpc
}

output "ip" {
    value = aws_eip.vpc.public_ip
}