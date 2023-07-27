virtual_hub_connections = {
  hub = {
    name                      = "spoke-1"
    internet_security_enabled = true
    virtual_hub = {
      lz_key = "secure_hub_uksouth"
      key    = "uksouth"
    }
    vnet = {
      vnet_key = "vnet"
    }
  }
}