azurerm_firewalls = {
  uksouth = {
    name     = "uksouth"
    sku_name = "AZFW_Hub"
    sku_tier = "Premium" # Standard, Premium
    firewall_policy = {
      key = "uksouth" # Ensure Policy is of same SKU as Firewall
    }
    region = "uksouth"
    resource_group = {
      # lz_key = "firewallpolicy" # In case key to call out from Remote TState
      key    = "firewall_policy"
      lz_key = "firewall_policies_base"
    }
    virtual_hub = {
      uksouth = {
        key = "uksouth"
        # lz_key = "xxx" # In case key to call out from Remote TState
        public_ip_count = 1
      }
    }
    # private_ip_ranges = []
    zones = ["1", "2", "3"]
  }
}
