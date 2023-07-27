monitor_private_link_scoped_services = {
  la_workspace_eastasia = {
    name          = "la-eastasia"
    resource_type = "log_analytics"
    key           = "eastasia"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "eastasia"
    }
  }
  mdce_linux_eastasia = {
    name          = "mdce-linux-eastasia"
    resource_type = "monitor_data_collection_endpoints"
    key           = "mdce_linux"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "eastasia"
    }
  }
  mdce_windows_eastasia = {
    name          = "mdce-windows-eastasia"
    resource_type = "monitor_data_collection_endpoints"
    key           = "mdce_windows"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "eastasia"
    }
  }
  azurerm_application_insights_eastasia = {
    name          = "appinsights-eastasia"
    resource_type = "azurerm_application_insights"
    key           = "eastasia"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "eastasia"
    }
  }
  azurerm_application_insights_1_eastasia = {
    name          = "appinsights-2-eastasia"
    resource_type = "azurerm_application_insights"
    key           = "eastasia-1"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "eastasia"
    }
  }
  azurerm_application_insights_2_eastasia = {
    name          = "appinsights-2-eastasia"
    resource_type = "azurerm_application_insights"
    key           = "eastasia-2"

    resource_group = {
      key = "ampls"
    }
    monitor_private_link_scope = {
      key = "eastasia"
    }
  }
}