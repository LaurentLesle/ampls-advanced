private_dns_resolver_dns_forwarding_rulesets = {
  rules = {
    name = "rules"
    resource_group = {
      #lz_key = ""
      key = "private_dns_resolver_eastasia"
    }
    dns_resolver_outbound_endpoints = {
      outbound_endpoint = {
        #lz_key =""
        #id = ""
        key = "outbound_endpoint"
      }
    }
  }
}

private_dns_resolver_virtual_network_links = {
  dispatcher = {
    dns_forwarding_ruleset = {
      key = "rules"
    }
    virtual_network_links = {
      dispatcher = {
        name = "rules"
        key  = "vnet"
      }
    }
  }
}