
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/1-regional/uksouth/1.1.2-private-dns-resolver-ampls \
  -tfstate private_dns_resolver_ampls_uksouth.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/private_dns_resolver_ampls_uksouth.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/1-regional/uksouth/1.1.2-private-dns-resolver-ampls \
  -tfstate private_dns_resolver_ampls_uksouth.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/private_dns_resolver_ampls_uksouth.tfplan \
  -a apply
```