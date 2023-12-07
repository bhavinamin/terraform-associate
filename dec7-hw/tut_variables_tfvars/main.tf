provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example_t2large" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = var.instance_type

    tags = {
        Name = "example_t2large"

    }
}