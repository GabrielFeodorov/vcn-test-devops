# GitHub Repository Terraform (VCN)

This folder contains the Terraform code you should push to your GitHub repository.

## Contents
- `main.tf`: creates one OCI VCN.
- `build_spec_plan.yaml`: OCI DevOps stage for `terraform plan`.
- `build_spec_apply.yaml`: OCI DevOps stage for `terraform apply`.

## Local test
1. Copy `terraform.tfvars.example` to `terraform.tfvars`.
2. Fill your OCIDs and region.
3. Run:

```bash
terraform init
terraform plan
```

## OCI DevOps usage
- The build pipeline will run `build_spec_plan.yaml` first.
- If successful, it runs `build_spec_apply.yaml`.
- Build specs set `TF_VAR_auth=ResourcePrincipal` so OCI DevOps build runners authenticate with resource principals.
