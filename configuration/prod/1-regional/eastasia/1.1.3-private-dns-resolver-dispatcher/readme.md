
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/1-regional/eastasia/1.1.3-private-dns-resolver-dispatcher \
  -tfstate private_dns_resolver_dispatcher_eastasia.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/private_dns_resolver_dispatcher_eastasia.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/1-regional/eastasia/1.1.3-private-dns-resolver-dispatcher \
  -tfstate private_dns_resolver_dispatcher_eastasia.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/private_dns_resolver_dispatcher_eastasia.tfplan \
  -a apply
```