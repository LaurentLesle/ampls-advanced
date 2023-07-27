
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/0-global/1.1-firewall-policies-base \
  -tfstate firewall_policies_base.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/firewall_policies_base.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/0-global/1.1-firewall-policies-base \
  -tfstate firewall_policies_base.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/firewall_policies_base.tfplan \
  -a apply
```