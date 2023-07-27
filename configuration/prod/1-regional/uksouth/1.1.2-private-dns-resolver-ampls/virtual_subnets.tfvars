vnets = {
  vnet = {
    resource_group_key = "ampls"
    vnet = {
      name          = "private-dns-zones-uksouth-ampls"
      address_space = ["10.20.1.0/24"]
    }
  }
}

virtual_subnets = {
  inbound1 = {
    name    = "inbound1"
    cidr    = ["10.20.1.0/28"]
    nsg_key = "empty_nsg"
    # service_endpoints = ["Microsoft.ServiceBus"]
    vnet = {
      # id = "/subscriptions/xxxx-xxxx-xxxx-xxx/resourceGroups/example-rg/providers/Microsoft.Network/virtualNetworks/example-vnet"
      # lz_key = ""
      key = "vnet"
    }
    delegation = {
      name               = "Microsoft.Network.dnsResolvers"
      service_delegation = "Microsoft.Network/dnsResolvers"
      actions            = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
    }
  }
  outbound = {
    name    = "out"
    cidr    = ["10.20.1.128/26"]
    nsg_key = "empty_nsg"
    # service_endpoints = ["Microsoft.ServiceBus"]
    vnet = {
      # id = "/subscriptions/xxxx-xxxx-xxxx-xxx/resourceGroups/example-rg/providers/Microsoft.Network/virtualNetworks/example-vnet"
      # lz_key = ""
      key = "vnet"
    }
    delegation = {
      name               = "Microsoft.Network.dnsResolvers"
      service_delegation = "Microsoft.Network/dnsResolvers"
      actions            = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
    }
  }

}