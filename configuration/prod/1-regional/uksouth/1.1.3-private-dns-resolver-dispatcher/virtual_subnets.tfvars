vnets = {
  vnet = {
    resource_group_key = "private_dns_resolver_uksouth"
    vnet = {
      name          = "private-dns-zones-uksouth"
      address_space = ["10.10.1.0/24"]
    }
  }
}

virtual_subnets = {
  # Each subnet will be used by a private dns resolver inbound listner and can handle up to 10000 DNS Queries Per Second (DQPS)
  inbound1 = {
    name    = "inbound1"
    cidr    = ["10.10.1.0/28"]
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
  # Adding a second one will bring up to 2 x 10000 DQPS (maximum of 5 listeners per Private DNS resolver)
  inbound2 = {
    name    = "inbound2"
    cidr    = ["10.10.1.16/28"]
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
    cidr    = ["10.10.1.128/26"]
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
  mgmt = {
    name    = "mgmt"
    cidr    = ["10.10.1.192/26"]
    nsg_key = "empty_nsg"
    vnet = {
      key = "vnet"
    }
  }

}