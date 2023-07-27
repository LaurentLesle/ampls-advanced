landingzone = {
  key                 = "secure_hub_eastasia"
  level               = "level0"
  global_settings_key = "vwan"
  tfstates = {
    vwan = {
      tfstate = "vwan.tfstate"
    }
    ampls_eastasia = {
      tfstate = "ampls_eastasia.tfstate"
    }
    private_dns_resolver_dispatcher_eastasia = {
      tfstate = "private_dns_resolver_dispatcher_eastasia.tfstate"
    }
    firewall_policies_base = {
      tfstate = "firewall_policies_base.tfstate"
    }
  }
}