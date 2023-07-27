bastion_hosts = {
  bastion = {
    name               = "bastion"
    resource_group_key = "bastion"
    vnet_key           = "vnet"
    subnet_key         = "AzureBastionSubnet"
    public_ip_key      = "bastion"
  }

}