monitor_private_link_scoped_services = {
  spoke_eastasia = {
    name          = "spoke-eastasia"
    resource_type = "azurerm_application_insights"
    key           = "spoke_eastasia"

    resource_group = {
      key    = "ampls"
      lz_key = "ampls_eastasia"
    }
    monitor_private_link_scope = {
      key    = "uksouth"
      lz_key = "ampls_eastasia"
    }
  }
}