
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/global/1.0-private-dns-zones \
  -tfstate private_dns_zones_global.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/private_dns_zones_global.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/global/1.0-private-dns-zones \
  -tfstate private_dns_zones_global.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/private_dns_zones_global.tfplan \
  -a apply
```