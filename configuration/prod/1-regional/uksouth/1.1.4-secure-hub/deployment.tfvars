landingzone = {
  key                 = "secure_hub_uksouth"
  level               = "level0"
  global_settings_key = "vwan"
  tfstates = {
    vwan = {
      tfstate = "vwan.tfstate"
    }
    ampls_uksouth = {
      tfstate = "ampls_uksouth.tfstate"
    }
    private_dns_resolver_dispatcher_uksouth = {
      tfstate = "private_dns_resolver_dispatcher_uksouth.tfstate"
    }
    firewall_policies_base = {
      tfstate = "firewall_policies_base.tfstate"
    }
  }
}