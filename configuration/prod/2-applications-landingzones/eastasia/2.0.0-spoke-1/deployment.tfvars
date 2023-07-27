landingzone = {
  key                 = "spoke_1_eastasia"
  level               = "level0"
  global_settings_key = "secure_hub_eastasia"
  tfstates = {
    secure_hub_eastasia = {
      tfstate = "secure_hub_eastasia.tfstate"
    }
    private_dns_zones_global = {
      tfstate = "private_dns_zones_global.tfstate"
    }
    ampls_eastasia = {
      tfstate = "ampls_eastasia.tfstate"
    }
  }
}

provider_azurerm_features_resource_group = {
  prevent_deletion_if_contains_resources = false
}