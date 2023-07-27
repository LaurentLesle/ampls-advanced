#!/bin/bash

export script_path=$(dirname "$BASH_SOURCE")
source ${script_path}/lib.sh

action=$1

set -ETe
trap 'error ${LINENO}' ERR 1 2 3 6

# Global services
global=(
  # "/tf/caf/configuration/prod/0-global/1.0.0-vwan,vwan",
  # "/tf/caf/configuration/prod/0-global/1.0.1-private-dns-zones,private_dns_zones_global",
  # "/tf/caf/configuration/prod/0-global/1.0.2-firewall-policies-base,firewall_policies_base"
)

# Regional services
uksouth=(
  # "/tf/caf/configuration/prod/1-regional/uksouth/1.1.0-private-dns-resolver-global,private_dns_zones_global_uksouth",
  # "/tf/caf/configuration/prod/1-regional/uksouth/1.1.1-ampls,ampls_uksouth",
  # "/tf/caf/configuration/prod/1-regional/uksouth/1.1.2-private-dns-resolver-ampls,private_dns_resolver_ampls_uksouth",
  "/tf/caf/configuration/prod/1-regional/uksouth/1.1.3-private-dns-resolver-dispatcher,private_dns_resolver_dispatcher_uksouth",
  "/tf/caf/configuration/prod/1-regional/uksouth/1.1.4-secure-hub,secure_hub_uksouth"

)
eastasia=(
  # "/tf/caf/configuration/prod/1-regional/eastasia/1.1.0-private-dns-resolver-global,private_dns_zones_global_eastasia",
  # "/tf/caf/configuration/prod/1-regional/eastasia/1.1.1-ampls,ampls_eastasia",
  # "/tf/caf/configuration/prod/1-regional/eastasia/1.1.2-private-dns-resolver-ampls,private_dns_resolver_ampls_eastasia",
  # "/tf/caf/configuration/prod/1-regional/eastasia/1.1.3-private-dns-resolver-dispatcher,private_dns_resolver_dispatcher_eastasia",
  # "/tf/caf/configuration/prod/1-regional/eastasia/1.1.4-secure-hub,secure_hub_eastasia"
)

applz=(
  "/tf/caf/configuration/prod/2-applications-landingzones/uksouth/2.0.0-spoke-1,spoke_1_uksouth",
  # "/tf/caf/configuration/prod/2-applications-landingzones/eastasia/2.0.0-spoke-1,spoke_1_eastasia",
  "/tf/caf/configuration/prod/2-applications-landingzones/southeastasia/bastion-host,bastion_host_southeastasia"
)

if [ "${action}" == "-destroy" ]; then
  destroy ${action}
else
  deploy
fi