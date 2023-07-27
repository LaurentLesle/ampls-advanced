azurerm_firewall_policies = {
  uksouth = {
    name = "uksouth"
    # Parent policy must be in the same region as child policy.
    # Firewall policy can be associated with Firewalls across regions regardless of where they are stored.
    region = "global"
    sku    = "Premium"
    resource_group = {
      key    = "firewall_policy"
      lz_key = "firewall_policies_base"
    }
    base_policy = {
      key    = "firewall_policies_base"
      lz_key = "firewall_policies_base"
    }
    dns = {
      proxy_enabled = true
      servers_objects = {
        pdns_uksouth_inbound1 = {
          object_type = "private_dns_resolver_inbound_endpoints"
          lz_key      = "private_dns_resolver_dispatcher_uksouth"
          key         = "inbound1"
        }
        pdns_uksouth_inbound2 = {
          object_type = "private_dns_resolver_inbound_endpoints"
          lz_key      = "private_dns_resolver_dispatcher_uksouth"
          key         = "inbound2"
        }
      }
    }
  }
}