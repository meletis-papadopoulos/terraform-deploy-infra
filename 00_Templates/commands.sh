# Get terraform version
terraform version

# Get terraform commands (help)
terraform -h

# Reformat your configuration in the standard style
terraform fmt

# Init terraform's Azure provider (main.tf)
terraform init

# Check whether the configuration is valid
terraform validate

# Plan and preview terraform changes
terraform plan

# Deploy terraform infra
terraform apply

# Destroy infra
terraform destroy

# Cleanup files
rm terraform.tfstate
rm terraform.tfstate.backup
rm tfplan
rm tfplan.json
rm -r .terraform/