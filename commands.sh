# Get terraform version
terraform version

# Get terraform commands
terraform

# Init terraform's Azure provider (main.tf)
terraform init

# Display the terraform template
cat main.tf

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