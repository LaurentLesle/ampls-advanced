virtual_hubs = {
  uksouth = {
    virtual_wan = {
      lz_key = "vwan"
      key    = "vwan"
    }

    resource_group = {
      lz_key = "vwan"
      key    = "vwan"
    }
    allow_branch_to_branch_traffic = false
    hub_routing_preference         = "ASPath"
    min_capacity                   = 5

    hub_name           = "uksouth"
    region             = "uksouth"
    hub_address_prefix = "10.10.0.0/24"
    deploy_p2s         = false
    p2s_config         = {}
    deploy_s2s         = false
    s2s_config         = {}
    deploy_er          = false
  }
}