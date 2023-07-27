private_dns_resolvers = {
  eastasia_ampls = {
    name               = "eastasia"
    resource_group_key = "ampls"
    region             = "eastasia"
    vnet = {
      #lz_key = ""
      key = "vnet"
      #id = ""
    }
  }

}


private_dns_resolver_inbound_endpoints = {
  inbound_endpoint = {
    name = "inbound"
    private_dns_resolver = {
      key = "eastasia_ampls"
    }
    ip_configurations = {
      inbound1 = {
        vnet = {
          #lz_key = ""
          # key = "vnet"
          #id = ""
          subnet_key = "inbound1"
        }
      }
    }
  }
}

private_dns_resolver_outbound_endpoints = {
  outbound_endpoint = {
    name = "outbound"
    private_dns_resolver = {
      key = "eastasia_ampls"
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