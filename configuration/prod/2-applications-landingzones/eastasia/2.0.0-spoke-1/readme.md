
Plan
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/2-applications-landingzones/eastasia/2.0.0-spoke-1 \
  -tfstate spoke_1_eastasia.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/spoke_1_eastasia.tfplan \
  -a plan
```

Apply
```bash
rover -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/prod/2-applications-landingzones/eastasia/2.0.0-spoke-1 \
  -tfstate spoke_1_eastasia.tfstate \
  -env scp \
  -p ${TF_DATA_DIR}/spoke_1_eastasia.tfplan \
  -a apply
```