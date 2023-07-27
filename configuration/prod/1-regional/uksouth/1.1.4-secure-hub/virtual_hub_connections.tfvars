virtual_hub_connections = {
  private_dns_resolver_dispatcher_uksouth = {
    name                      = "private_dns_resolver_dispatcher_uksouth"
    internet_security_enabled = true
    virtual_hub = {
      key = "uksouth"
    }
    vnet = {
      lz_key   = "private_dns_resolver_dispatcher_uksouth"
      vnet_key = "vnet"
    }
  }
  ampls_uksouth = {
    name                      = "ampls-uksouth"
    internet_security_enabled = true
    virtual_hub = {
      key = "uksouth"
    }
    vnet = {
      lz_key   = "ampls_uksouth"
      vnet_key = "vnet"
    }
  }
}