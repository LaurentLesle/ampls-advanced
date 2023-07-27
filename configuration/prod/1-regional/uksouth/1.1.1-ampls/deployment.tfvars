landingzone = {
  key                 = "ampls_uksouth"
  level               = "level0"
  global_settings_key = "vwan"
  tfstates = {
    vwan = {
      tfstate = "vwan.tfstate"
    }
  }
}

provider_azurerm_features_resource_group = {
  prevent_deletion_if_contains_resources = false
}