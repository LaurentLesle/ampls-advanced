landingzone = {
  key                 = "private_dns_resolver_ampls_uksouth"
  level               = "level0"
  global_settings_key = "uksouth_ampls"
  tfstates = {
    private_dns_resolver_dispatcher_uksouth = {
      tfstate = "private_dns_resolver_dispatcher_uksouth.tfstate"
    }
    ampls_uksouth = {
      tfstate = "ampls_uksouth.tfstate"
    }
  }
}