vnets = {
  vnet = {
    resource_group_key = "bastion"
    vnet = {
      name          = "vnet-bastion"
      address_space = ["10.42.0.0/24"]
    }
    subnets = {
      AzureBastionSubnet = {
        name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr    = ["10.42.0.0/25"]
        nsg_key = "azure_bastion_nsg"
      }
    }

  }
}