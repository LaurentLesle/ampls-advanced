private_dns_resolvers = {
  uksouth = {
    name               = "uksouth"
    resource_group_key = "private_dns_resolver_uksouth"
    region             = "uksouth"
    vnet = {
      #lz_key = ""
      key = "vnet"
      #id = ""
    }
  }

}


private_dns_resolver_inbound_endpoints = {
  inbound1 = {
    name = "inbound1"
    private_dns_resolver = {
      key = "uksouth"
    }
    vnet = {
      #lz_key = ""
      # key = "vnet"
      #subnet_id = ""
      subnet_key = "inbound1"
    }
  }
  inbound2 = {
    name = "inbound2"
    private_dns_resolver = {
      key = "uksouth"
    }
    vnet = {
      #lz_key = ""
      # key = "vnet"
      #id = ""
      subnet_key = "inbound2"
    }
  }
}

private_dns_resolver_outbound_endpoints = {
  outbound_endpoint = {
    name = "outbound"
    private_dns_resolver = {
      key = "uksouth"
      #lz_key = ""
    }
    vnet = {
      #lz_key = ""
      # key = "vnet"
      #id = ""
      subnet_key = "outbound"
    }


  }
}