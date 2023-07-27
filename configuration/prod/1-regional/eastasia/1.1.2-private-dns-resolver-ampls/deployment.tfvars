landingzone = {
  key                 = "private_dns_resolver_ampls_eastasia"
  level               = "level0"
  global_settings_key = "eastasia_ampls"
  tfstates = {
    private_dns_resolver_dispatcher_eastasia = {
      tfstate = "private_dns_resolver_dispatcher_eastasia.tfstate"
    }
    ampls_eastasia = {
      tfstate = "ampls_eastasia.tfstate"
    }
  }
}