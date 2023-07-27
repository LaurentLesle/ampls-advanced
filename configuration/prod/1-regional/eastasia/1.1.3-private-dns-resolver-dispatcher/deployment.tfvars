landingzone = {
  key                 = "private_dns_resolver_dispatcher_eastasia"
  level               = "level0"
  global_settings_key = "private_dns_zones_global_eastasia"
  tfstates = {
    private_dns_zones_global_eastasia = {
      tfstate = "private_dns_zones_global_eastasia.tfstate"
    }
    private_dns_resolver_ampls_eastasia = {
      tfstate = "private_dns_resolver_ampls_eastasia.tfstate"
    }
  }
}
