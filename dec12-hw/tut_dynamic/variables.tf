variable "sec_group_name" {
    type = string 
    default = "foo"
}

variable "ingress_ports" {
    type = list 
    default = ["80","443"]
}

