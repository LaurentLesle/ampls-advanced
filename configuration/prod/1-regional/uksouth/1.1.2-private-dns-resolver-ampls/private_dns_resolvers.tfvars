private_dns_resolvers = {
  uksouth_ampls = {
    name               = "uksouth"
    resource_group_key = "ampls"
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
    name = "inbound"
    private_dns_resolver = {
      key = "uksouth_ampls"
    }
    vnet = {
      #lz_key = ""
      # key = "vnet"
      #id = ""
      subnet_key = "inbound1"
    }
  }
}

private_dns_resolver_outbound_endpoints = {
  outbound_endpoint = {
    name = "outbound"
    private_dns_resolver = {
      key = "uksouth_ampls"
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