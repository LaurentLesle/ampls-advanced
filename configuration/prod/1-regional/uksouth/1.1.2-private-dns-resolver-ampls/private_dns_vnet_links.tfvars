private_dns_vnet_links = {
  uksouth = {
    version  = "v1"
    vnet_key = "vnet"
    private_dns_zones = {
      "privatelink.agentsvc.azure-automation.net" = {
        name   = "uksouth"
        key    = "privatelink.agentsvc.azure-automation.net"
        lz_key = "ampls_uksouth"
        # dns_parent_id = "resource id of the private dns zone"
      }
      "privatelink.blob.core.windows.net" = {
        name   = "uksouth"
        key    = "privatelink.blob.core.windows.net"
        lz_key = "ampls_uksouth"
      }
      "privatelink.monitor.azure.com" = {
        name   = "uksouth"
        key    = "privatelink.monitor.azure.com"
        lz_key = "ampls_uksouth"
      }
      "privatelink.ods.opinsights.azure.com" = {
        name   = "uksouth"
        key    = "privatelink.ods.opinsights.azure.com"
        lz_key = "ampls_uksouth"
      }
      "privatelink.oms.opinsights.azure.com" = {
        name   = "uksouth"
        key    = "privatelink.oms.opinsights.azure.com"
        lz_key = "ampls_uksouth"
      }
    }
  }
}