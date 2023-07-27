# private_dns_resolver_forwarding_dynamic_rules = {
#   ampls = {
#     private_dns = {
#       lz_key = "ampls_uksouth"
#       keys = [
#         "privatelink.agentsvc.azure-automation.net",
#         "privatelink.blob.core.windows.net",
#         "privatelink.monitor.azure.com",
#         "privatelink.ods.opinsights.azure.com",
#         "privatelink.oms.opinsights.azure.com"
#       ]
#     }

#     enabled     = true
#     dns_records = "a"

#     dns_forwarding_ruleset = {
#       #lz_key =""
#       #id=""
#       key = "global_private_dns_zones"
#     }
#     target_dns_servers = {
#       ampls_uksouth = {
#         private_dns_resolver_inbound_endpoint = {
#           lz_key = "ampls_uksouth"
#           key    = "inbound_endpoint"
#         }
#         port = "53"
#       }
#     }
#   }
# }