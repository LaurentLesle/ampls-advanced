
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/1-regional/uksouth/1.1.1-ampls \
  -tfstate ampls_uksouth.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/ampls_uksouth.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/1-regional/uksouth/1.1.1-ampls \
  -tfstate ampls_uksouth.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/ampls_uksouth.tfplan \
  -a apply
```