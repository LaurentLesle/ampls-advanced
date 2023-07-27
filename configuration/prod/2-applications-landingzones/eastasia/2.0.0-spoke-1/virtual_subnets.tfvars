vnets = {
  vnet = {
    resource_group_key = "spoke"
    vnet = {
      name          = "eastasia-spoke1"
      address_space = ["10.41.0.0/24"]
      dns_servers_keys = {
        firewall = {
          resource_type   = "azurerm_firewalls"
          lz_key          = "secure_hub_eastasia"
          key             = "eastasia"
          interface_index = 0
        }
      }
    }
  }
}

virtual_subnets = {
  vm = {
    name    = "vm"
    cidr    = ["10.41.0.0/26"]
    nsg_key = "empty_nsg"
    vnet = {
      key = "vnet"
    }
  }
  pep = {
    name    = "private-endpoints"
    cidr    = ["10.41.0.192/26"]
    nsg_key = "empty_nsg"
    vnet = {
      key = "vnet"
    }
    private_endpoint_network_policies_enabled = true
  }

}