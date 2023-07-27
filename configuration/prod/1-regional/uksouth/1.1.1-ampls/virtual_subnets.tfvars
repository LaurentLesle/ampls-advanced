vnets = {
  vnet = {
    resource_group_key = "ampls"
    vnet = {
      name          = "uksouth-ampls"
      address_space = ["10.30.0.0/24"]
    }
  }
}

virtual_subnets = {
  ampls = {
    name    = "ampls"
    cidr    = ["10.30.0.0/27"]
    nsg_key = "empty_nsg"
    vnet = {
      key = "vnet"
    }
    private_endpoint_network_policies_enabled = true
  }

}