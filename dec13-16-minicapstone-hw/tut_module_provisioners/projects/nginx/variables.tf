variable key_name {
    type  = string 
}
variable key_path {
    type = string 
}
variable sec_group_name {
    type = string 
}
variable sec_group_description{
    type = string 
}

variable cidr_ipv4{
    default = "0.0.0.0/0"
}

variable commands {
    type = list 
}