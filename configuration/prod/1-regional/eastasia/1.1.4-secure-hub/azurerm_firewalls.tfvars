azurerm_firewalls = {
  eastasia = {
    name     = "eastasia"
    sku_name = "AZFW_Hub"
    sku_tier = "Premium" # Standard, Premium
    firewall_policy = {
      key = "eastasia" # Ensure Policy is of same SKU as Firewall
    }
    region = "eastasia"
    resource_group = {
      # lz_key = "firewallpolicy" # In case key to call out from Remote TState
      key    = "firewall_policy"
      lz_key = "firewall_policies_base"
    }
    virtual_hub = {
      eastasia = {
        key = "eastasia"
        # lz_key = "xxx" # In case key to call out from Remote TState
        public_ip_count = 1
      }
    }
    # private_ip_ranges = []
    zones = ["1", "2", "3"]
  }
}
