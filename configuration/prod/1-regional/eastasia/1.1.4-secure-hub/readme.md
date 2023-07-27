
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/1-regional/eastasia/1.1.4-secure-hub \
  -tfstate secure_hub_eastasia.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/secure_hub_eastasia.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/1-regional/eastasia/1.1.4-secure-hub \
  -tfstate secure_hub_eastasia.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/secure_hub_eastasia.tfplan \
  -a apply
```