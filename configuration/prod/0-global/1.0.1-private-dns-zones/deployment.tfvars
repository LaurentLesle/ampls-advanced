landingzone = {
  key                 = "private_dns_zones_global"
  level               = "level0"
  global_settings_key = "vwan"
  tfstates = {
    vwan = {
      tfstate = "vwan.tfstate"
    }
  }
}