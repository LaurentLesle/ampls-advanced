azurerm_application_insights = {
  spoke_uksouth = {
    name = "spoke1-uksouth"
    resource_group = {
      key = "spoke"
    }
    application_type = "web"
  }
}