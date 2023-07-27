monitor_data_collection_endpoints = {
  mdce_linux = {
    name = "mdce-linux-eastasia"
    resource_group = {
      key = "ampls"
    }
    description                   = "Azure Monitor Data Collection endpoint for Linux VM in eastasia"
    kind                          = "Linux"
    public_network_access_enabled = false
    tags = {
      region = "eastasia"
    }
  }
  mdce_windows = {
    name = "mdce-windows-eastasia"
    resource_group = {
      key = "ampls"
    }
    description                   = "Azure Monitor Data Collection endpoint for Linux VM in eastasia"
    kind                          = "Windows"
    public_network_access_enabled = false
    tags = {
      region = "eastasia"
    }
  }
}