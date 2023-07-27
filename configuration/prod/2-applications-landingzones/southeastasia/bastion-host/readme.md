
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/2-applications-landingzones/southeastasia/bastion-host \
  -tfstate bastion_host_southeastasia.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/bastion_host_southeastasia.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/2-applications-landingzones/southeastasia/bastion-host \
  -tfstate bastion_host_southeastasia.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/bastion_host_southeastasia.tfplan \
  -a apply
```