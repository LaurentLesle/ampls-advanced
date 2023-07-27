monitor_private_link_scoped_services = {
  la_workspace_uksouth = {
    name          = "la-uksouth"
    resource_type = "log_analytics"
    key           = "uksouth"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "uksouth"
    }
  }
  mdce_linux_uksouth = {
    name          = "mdce-linux-uksouth"
    resource_type = "monitor_data_collection_endpoints"
    key           = "mdce_linux"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "uksouth"
    }
  }
  mdce_windows_uksouth = {
    name          = "mdce-windows-uksouth"
    resource_type = "monitor_data_collection_endpoints"
    key           = "mdce_windows"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "uksouth"
    }
  }
  azurerm_application_insights_uksouth = {
    name          = "appinsights-uksouth"
    resource_type = "azurerm_application_insights"
    key           = "uksouth"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "uksouth"
    }
  }
  azurerm_application_insights_1_uksouth = {
    name          = "appinsights-2-uksouth"
    resource_type = "azurerm_application_insights"
    key           = "uksouth-1"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "uksouth"
    }
  }
  azurerm_application_insights_2_uksouth = {
    name          = "appinsights-2-uksouth"
    resource_type = "azurerm_application_insights"
    key           = "uksouth-2"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "uksouth"
    }
  }
}