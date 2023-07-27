private_dns_vnet_links = {
  eastasia = {
    version  = "v1"
    vnet_key = "vnet"
    private_dns_zones = {
      "privatelink.blob.core.windows.net" = {
        name   = "eastasia"
        key    = "privatelink.blob.core.windows.net"
        lz_key = "private_dns_zones_global"
      }
    }
  }
}