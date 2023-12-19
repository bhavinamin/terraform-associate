#use default ec2
module "server" {
  source = "../../modules/ec2"
  key_name = var.key_name
  key_path = var.key_path
  commands = var.commands
  security_groups = [module.sec_group.sg_name]
  depends_on = [ module.sec_group ]
}

module "sec_group" {
  source                = "../../modules/sec_group"
  sec_group_name        = var.sec_group_name
  sec_group_description = var.sec_group_description
}

module "sec_group_rules" {
  source       = "../../modules/sec_group_rules"
  sec_group_id = module.sec_group.sg_id
  cidr_ipv4 = var.cidr_ipv4
  depends_on = [ module.sec_group ]

}




