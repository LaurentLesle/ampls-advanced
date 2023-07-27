landingzone = {
  key                 = "spoke_1_uksouth"
  level               = "level0"
  global_settings_key = "secure_hub_uksouth"
  tfstates = {
    secure_hub_uksouth = {
      tfstate = "secure_hub_uksouth.tfstate"
    }
    private_dns_zones_global = {
      tfstate = "private_dns_zones_global.tfstate"
    }
    ampls_uksouth = {
      tfstate = "ampls_uksouth.tfstate"
    }
  }
}

provider_azurerm_features_resource_group = {
  prevent_deletion_if_contains_resources = false
}