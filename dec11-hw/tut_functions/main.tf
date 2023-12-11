provider "aws" {
  region = var.aws_instance_region
}


#if var.region is set to us-east-1, should return ami ending with 0c6
resource "aws_instance" "foo" {
    ami = lookup(var.aws_instance_amis, var.aws_instance_region)
    instance_type = var.aws_instance_type
    count = 2 

    tags =  {
        Name = element(var.aws_instance_tags, count.index)
    }
}

