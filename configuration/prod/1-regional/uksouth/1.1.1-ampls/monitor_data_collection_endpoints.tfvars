monitor_data_collection_endpoints = {
  mdce_linux = {
    name = "mdce-linux-uksouth"
    resource_group = {
      key = "ampls"
    }
    description                   = "Azure Monitor Data Collection endpoint for Linux VM in uksouth"
    kind                          = "Linux"
    public_network_access_enabled = false
    tags = {
      region = "uksouth"
    }
  }
  mdce_windows = {
    name = "mdce-windows-uksouth"
    resource_group = {
      key = "ampls"
    }
    description                   = "Azure Monitor Data Collection endpoint for Linux VM in uksouth"
    kind                          = "Windows"
    public_network_access_enabled = false
    tags = {
      region = "uksouth"
    }
  }
}