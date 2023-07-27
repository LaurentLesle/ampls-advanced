
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/0-global/1.0.0-vwan \
  -tfstate vwan.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/vwan.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/0-global/1.0.0-vwan \
  -tfstate vwan.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/vwan.tfplan \
  -a apply
```