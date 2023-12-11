provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "foo_dev" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = "t2.micro"
    count = var.is_test ? 3 : 0 

    tags = {
        Name = "${var.envs[0]}-${count.index}"

    }
}

resource "aws_instance" "foo_prd" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = "t2.large"
    count = var.is_test ? 0 : 3 

    tags = {
        Name = "${var.envs[1]}-${count.index}"

    }
}