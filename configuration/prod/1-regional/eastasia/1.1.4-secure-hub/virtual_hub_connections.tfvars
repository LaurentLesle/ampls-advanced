virtual_hub_connections = {
  private_dns_resolver_dispatcher_eastasia = {
    name                      = "private_dns_resolver_dispatcher_eastasia"
    internet_security_enabled = true
    virtual_hub = {
      key = "eastasia"
    }
    vnet = {
      lz_key   = "private_dns_resolver_dispatcher_eastasia"
      vnet_key = "vnet"
    }
  }
  ampls_eastasia = {
    name                      = "ampls-eastasia"
    internet_security_enabled = true
    virtual_hub = {
      key = "eastasia"
    }
    vnet = {
      lz_key   = "ampls_eastasia"
      vnet_key = "vnet"
    }
  }
}