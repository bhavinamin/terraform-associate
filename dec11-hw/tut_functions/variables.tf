variable "aws_instance_amis" {
    type = map(string)
    default = {us-east-1="ami-0230bd60aa48260c6", us-west-1="ami-06e4ca05d431835e9"}
}

variable "aws_instance_type" {
    default = "t2.micro"
}

variable "aws_instance_region" {
    default = "us-east-1"
}

variable "aws_instance_tags" {
    type = list
    default = ["ba-instance-1", "ba-instance-2"]
}