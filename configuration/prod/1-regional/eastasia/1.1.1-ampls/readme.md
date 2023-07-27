
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/1-regional/eastasia/1.1.1-ampls \
  -tfstate ampls_eastasia.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/ampls_eastasia.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/1-regional/eastasia/1.1.1-ampls \
  -tfstate ampls_eastasia.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/ampls_eastasia.tfplan \
  -a apply
```