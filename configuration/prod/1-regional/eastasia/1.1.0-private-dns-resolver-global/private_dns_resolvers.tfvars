private_dns_resolvers = {
  eastasia = {
    name               = "eastasia"
    resource_group_key = "private_dns_resolver_eastasia"
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
      key = "eastasia"
      #lz_key = ""
    }
    ip_configuration = {
      #subnet_id=""
      vnet = {
        #lz_key = ""
        # key = "vnet"
        subnet_key = "inbound"
      }
    }
  }
}

private_dns_resolver_outbound_endpoints = {
  outbound_endpoint = {
    name = "outbound"
    private_dns_resolver = {
      key = "eastasia"
      #lz_key = ""
    }
    #subnet_id =""
    vnet = {
      #lz_key = ""
      # key = "vnet"
      #id = ""
      subnet_key = "outbound"
    }


  }
}