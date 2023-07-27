landingzone = {
  key                 = "firewall_policies_base"
  level               = "level0"
  global_settings_key = "vwan"
  tfstates = {
    vwan = {
      tfstate = "vwan.tfstate"
    }
  }
}