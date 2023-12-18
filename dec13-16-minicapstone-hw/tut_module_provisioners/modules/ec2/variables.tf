variable instance_type{
    default="t2.micro"
    type=string
}

variable ami {
    default = "ami-018ba43095ff50d08" #amazon linux | us-east-1 
    type = string
}

variable "key_name" {
  type = string 
}

variable "key_path" {
  type = string
}

variable "commands" {
  type = list
}

variable "security_groups" {
  type = list 
}