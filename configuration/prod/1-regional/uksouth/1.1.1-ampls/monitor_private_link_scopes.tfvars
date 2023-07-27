monitor_private_link_scopes = {
  uksouth = {
    name = "ampls-ea"
    resource_group = {
      key = "ampls"
    }

    private_endpoints = {
      ampls = {
        name               = "ampls"
        resource_group_key = "ampls"

        # lz_key     = ""
        subnet_key = "ampls"

        private_service_connection = {
          name                 = "ampls"
          is_manual_connection = false
          subresource_names    = ["azuremonitor"]
        }

        private_dns = {
          # lz_key          = ""
          keys = [
            "privatelink.agentsvc.azure-automation.net",
            "privatelink.blob.core.windows.net",
            "privatelink.monitor.azure.com",
            "privatelink.ods.opinsights.azure.com",
            "privatelink.oms.opinsights.azure.com"
          ]
        }
      }
    }
  }
}
