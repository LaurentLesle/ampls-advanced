vnet_peerings_v1 = {
  bastion_to_spoke_ea_1 = {
    name = "bastion_to_spoke_ea_1"
    from = {
      vnet_key = "vnet"
    }
    to = {
      lz_key   = "spoke_1_eastasia"
      vnet_key = "vnet"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  spoke_ea_1_to_bastion = {
    name = "spoke_ea_1_to_bastion"
    from = {
      lz_key   = "spoke_1_eastasia"
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

  bastion_to_spoke_uks_1 = {
    name = "bastion_to_spoke_uks_1"
    from = {
      vnet_key = "vnet"
    }
    to = {
      lz_key   = "spoke_1_uksouth"
      vnet_key = "vnet"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  spoke_uks_1_to_bastion = {
    name = "spoke_uks_1_to_bastion"
    from = {
      lz_key   = "spoke_1_uksouth"
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