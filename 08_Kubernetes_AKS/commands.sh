# Make sure terraform CLI is installed
terraform

# Format the tf files
terraform fmt

# Initialize terraform Azure modules
terraform init

# Validate the template
terraform validate

# Plan and save the infra changes into tfplan file
terraform plan -out tfplan

# Show the tfplan file
terraform show -json tfplan
terraform show -json tfplan >> tfplan.json

# Format tfplan.json file
terraform show -json tfplan | jq '.' > tfplan.json

# Show only the changes
cat tfplan.json | jq -r '(.resource_changes[] | [.change.actions[], .type, .change.after.name]) | @tsv'
cat tfplan.json | jq '[.resource_changes[] | {type: .type, name: .change.after.name, actions: .change.actions[]}]' 

# Apply the infra changes
terraform apply tfplan

# Delete the infra
terraform destroy

# Cleanup files
rm terraform.tfstate
rm terraform.tfstate.backup
rm tfplan
rm tfplan.json
rm -r .terraform/