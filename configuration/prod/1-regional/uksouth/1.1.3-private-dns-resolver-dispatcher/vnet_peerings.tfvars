vnet_peerings_v1 = {
  pdnsr_ea_TO_pdnsr_global = {
    name = "pdnsr_ea_TO_pdnsr_global"
    from = {
      vnet_key = "vnet"
    }
    to = {
      lz_key   = "private_dns_zones_global_uksouth"
      vnet_key = "vnet"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  pdnsr_global_TO_pdnsr_uks = {
    name = "pdnsr_global_TO_pdnsr_uks"
    from = {
      lz_key   = "private_dns_zones_global_uksouth"
      vnet_key = "vnet"
    }
    to = {
      vnet_key = "vnet"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  dispatcher_to_ampls = {
    name = "dispatcher_to_ampls"
    from = {
      vnet_key = "vnet"
    }
    to = {
      lz_key   = "private_dns_resolver_ampls_uksouth"
      vnet_key = "vnet"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  ampls_to_dispatcher = {
    name = "ampls_to_dispatcher"
    from = {
      lz_key   = "private_dns_resolver_ampls_uksouth"
      vnet_key = "vnet"
    }
    to = {
      vnet_key = "vnet"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }
}