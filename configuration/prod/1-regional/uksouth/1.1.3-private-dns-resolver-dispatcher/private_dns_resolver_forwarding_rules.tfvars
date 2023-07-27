# Would be a good candidate to be moved into a separate deployment
# and combined with all global private dns zones management.
#

private_dns_resolver_forwarding_rules = {
  "privatelink.blob.core.windows.net" = {
    name        = "privatelink.blob.core.windows.net"
    domain_name = "privatelink.blob.core.windows.net."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_zones_global_uksouth"
          key             = "inbound_endpoint"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "scadvisorcontentpl.privatelink.blob.core.windows.net" = {
    name        = "scadvisorcontentpl.privatelink.blob.core.windows.net"
    domain_name = "scadvisorcontentpl.privatelink.blob.core.windows.net."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }


  "api.privatelink.monitor.azure.com" = {
    name        = "api.privatelink.monitor.azure.com"
    domain_name = "api.privatelink.monitor.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "uksouth-0.in.ai.privatelink.monitor.azure.com" = {
    name        = "uksouth-0.in.ai.privatelink.monitor.azure.com"
    domain_name = "uksouth-0.in.ai.privatelink.monitor.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "global.in.ai.privatelink.monitor.azure.com" = {
    name        = "global.in.ai.privatelink.monitor.azure.com"
    domain_name = "global.in.ai.privatelink.monitor.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "global.handler.control.privatelink.monitor.azure.com" = {
    name        = "global.handler.control.privatelink.monitor.azure.com"
    domain_name = "global.handler.control.privatelink.monitor.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "diagservices-query.privatelink.monitor.azure.com" = {
    name        = "diagservices-query.privatelink.monitor.azure.com"
    domain_name = "diagservices-query.privatelink.monitor.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "live.privatelink.monitor.azure.com" = {
    name        = "live.privatelink.monitor.azure.com"
    domain_name = "live.privatelink.monitor.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "uksouth.livediagnostics.privatelink.monitor.azure.com" = {
    name        = "uksouth.livediagnostics.privatelink.monitor.azure.com"
    domain_name = "uksouth.livediagnostics.privatelink.monitor.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "profiler.privatelink.monitor.azure.com" = {
    name        = "profiler.privatelink.monitor.azure.com"
    domain_name = "profiler.privatelink.monitor.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "snapshot.privatelink.monitor.azure.com" = {
    name        = "snapshot.privatelink.monitor.azure.com"
    domain_name = "snapshot.privatelink.monitor.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }


  "c16dc0d7-284c-472d-8d9c-fdfdc8775821.privatelink.ods.opinsights.azure.com" = {
    name        = "c16dc0d7-284c-472d-8d9c-fdfdc8775821.privatelink.ods.opinsights.azure.com"
    domain_name = "c16dc0d7-284c-472d-8d9c-fdfdc8775821.privatelink.ods.opinsights.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "c16dc0d7-284c-472d-8d9c-fdfdc8775821.privatelink.agentsvc.azure-automation.net" = {
    name        = "c16dc0d7-284c-472d-8d9c-fdfdc8775821.privatelink.agentsvc.azure-automation.net"
    domain_name = "c16dc0d7-284c-472d-8d9c-fdfdc8775821.privatelink.agentsvc.azure-automation.net."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
  "c16dc0d7-284c-472d-8d9c-fdfdc8775821.privatelink.opinsights.azure.com" = {
    name        = "c16dc0d7-284c-472d-8d9c-fdfdc8775821.privatelink.opinsights.azure.com"
    domain_name = "c16dc0d7-284c-472d-8d9c-fdfdc8775821.privatelink.opinsights.azure.com."
    enabled     = true
    global_settings = {
      passthrough = true
    }
    dns_forwarding_ruleset = {
      #lz_key =""
      #id=""
      key = "rules"
    }
    target_dns_servers = {
      private_dns_resolver_inbound_endpoints = {
        private_dns_resolver_ampls_uksouth_inbound_endpoint = {
          lz_key          = "private_dns_resolver_ampls_uksouth"
          key             = "inbound1"
          interface_index = 0
          port            = 53
        }
      }
    }
  }
}
