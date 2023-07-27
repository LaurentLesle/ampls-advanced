monitor_private_link_scoped_services = {
  spoke_uksouth = {
    name          = "spoke-uksouth"
    resource_type = "azurerm_application_insights"
    key           = "spoke_uksouth"

    resource_group = {
      key    = "ampls"
      lz_key = "ampls_uksouth"
    }
    monitor_private_link_scope = {
      key    = "uksouth"
      lz_key = "ampls_uksouth"
    }
  }
}