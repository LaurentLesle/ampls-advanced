private_dns_vnet_links = {
  eastasia = {
    version  = "v1"
    vnet_key = "vnet"
    private_dns_zones = {
      "privatelink.agentsvc.azure-automation.net" = {
        name   = "eastasia"
        key    = "privatelink.agentsvc.azure-automation.net"
        lz_key = "ampls_eastasia"
        # dns_parent_id = "resource id of the private dns zone"
      }
      "privatelink.blob.core.windows.net" = {
        name   = "eastasia"
        key    = "privatelink.blob.core.windows.net"
        lz_key = "ampls_eastasia"
      }
      "privatelink.monitor.azure.com" = {
        name   = "eastasia"
        key    = "privatelink.monitor.azure.com"
        lz_key = "ampls_eastasia"
      }
      "privatelink.ods.opinsights.azure.com" = {
        name   = "eastasia"
        key    = "privatelink.ods.opinsights.azure.com"
        lz_key = "ampls_eastasia"
      }
      "privatelink.oms.opinsights.azure.com" = {
        name   = "eastasia"
        key    = "privatelink.oms.opinsights.azure.com"
        lz_key = "ampls_eastasia"
      }
    }
  }
}