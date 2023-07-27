private_dns_vnet_links = {
  uksouth = {
    version  = "v1"
    vnet_key = "vnet"
    private_dns_zones = {
      "privatelink.blob.core.windows.net" = {
        name   = "uksouth"
        key    = "privatelink.blob.core.windows.net"
        lz_key = "private_dns_zones_global"
      }
    }
  }
}