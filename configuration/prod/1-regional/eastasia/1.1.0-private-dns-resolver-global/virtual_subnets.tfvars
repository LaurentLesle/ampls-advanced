vnets = {
  vnet = {
    resource_group_key = "private_dns_resolver_eastasia"
    vnet = {
      name          = "private-dns-zones-eastasia"
      address_space = ["10.50.0.0/24"]
    }
  }
}

virtual_subnets = {
  inbound = {
    name    = "in"
    cidr    = ["10.50.0.0/25"]
    nsg_key = "empty_nsg"
    vnet = {
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
    cidr    = ["10.50.0.128/25"]
    nsg_key = "empty_nsg"
    vnet = {
      key = "vnet"
    }
    delegation = {
      name               = "Microsoft.Network.dnsResolvers"
      service_delegation = "Microsoft.Network/dnsResolvers"
      actions            = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
    }
  }

}