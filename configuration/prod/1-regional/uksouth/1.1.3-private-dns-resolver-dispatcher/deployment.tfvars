landingzone = {
  key                 = "private_dns_resolver_dispatcher_uksouth"
  level               = "level0"
  global_settings_key = "private_dns_zones_global_uksouth"
  tfstates = {
    private_dns_zones_global_uksouth = {
      tfstate = "private_dns_zones_global_uksouth.tfstate"
    }
    private_dns_resolver_ampls_uksouth = {
      tfstate = "private_dns_resolver_ampls_uksouth.tfstate"
    }
  }
}
