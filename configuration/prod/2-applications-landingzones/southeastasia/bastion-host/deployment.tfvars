landingzone = {
  key                 = "bastion_host_southeastasia"
  level               = "level0"
  global_settings_key = "secure_hub_eastasia"
  tfstates = {
    secure_hub_eastasia = {
      tfstate = "secure_hub_eastasia.tfstate"
    }
    spoke_1_eastasia = {
      tfstate = "spoke_1_eastasia.tfstate"
    }
    spoke_1_uksouth = {
      tfstate = "spoke_1_uksouth.tfstate"
    }
  }
}

provider_azurerm_features_resource_group = {
  prevent_deletion_if_contains_resources = false
}