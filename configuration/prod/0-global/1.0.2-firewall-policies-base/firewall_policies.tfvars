azurerm_firewall_policies = {
  firewall_policies_base = {
    name   = "base"
    region = "global"
    sku    = "Premium"
    resource_group = {
      key = "firewall_policy"
    }

    threat_intelligence_mode = "Alert"
    threat_intelligence_allowlist = {
      fqdns = ["microsoft.com", "demo.com"]
    }
  }
}