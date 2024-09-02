# Init TF Azure provider (main.tf)
terraform init

# List existing workspaces
terraform workspace list

# Create workspace (Dev)
terraform workspace new dev
terraform workspace list

# Plan (Dev)
terraform plan -out dev.tfplan

# Apply (Dev)
terraform apply dev.tfplan

# Create workspace (Test)
terraform workspace new test
terraform workspace list

# Plan (Test)
terraform plan -out test.tfplan

# Apply (Test)
terraform apply test.tfplan

# Create workspace (Prod)
terraform workspace new prod
terraform workspace list

# Plan (Prod)
terraform plan -out prod.tfplan

# Apply (Prod)
terraform apply prod.tfplan