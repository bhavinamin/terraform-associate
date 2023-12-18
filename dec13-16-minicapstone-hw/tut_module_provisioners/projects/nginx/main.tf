#use default ec2
module "server" {
  source = "../../modules/ec2"
  key_name = "Nginx-vm"
  key_path = "./Nginx-vm.pem"
  commands  = [
      "sudo yum install -y amazon-linux-extras",
      "sudo amazon-linux-extras enable nginx1",
      "sudo yum install -y nginx",
      "sudo systemctl start nginx"
    ]
  security_groups = [module.sec_group.sg_name]
  depends_on = [ module.sec_group ]
}

module "sec_group" {
  source                = "../../modules/sec_group"
  sec_group_name        = "NGINX SEC GROUP"
  sec_group_description = "Security group for NGINX HTTP server"
}

module "sec_group_rules" {
  source       = "../../modules/sec_group_rules"
  sec_group_id = module.sec_group.sg_id
  cidr_ipv4 = "100.19.[redacted]/32" #ssh from my singular IP
  depends_on = [ module.sec_group ]

}

    
