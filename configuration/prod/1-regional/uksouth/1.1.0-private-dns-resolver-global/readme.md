
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/regional/uksouth/1.1.0-private-dns-resolver-global \
  -tfstate private_dns_zones_global_uksouth.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/private_dns_zones_global_uksouth.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/regional/uksouth/1.1.0-private-dns-resolver-global \
  -tfstate private_dns_zones_global_uksouth.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/private_dns_zones_global_uksouth.tfplan \
  -a apply
```