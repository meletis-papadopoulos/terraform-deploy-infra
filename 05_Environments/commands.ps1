# Get Terraform version
# terraform version

# Get help
# terraform -h

# Init TF Azure provider (provider.tf)
terraform init

# Plan & Preview changes (Dev) environment
terraform plan  -out .\Dev\dev.tfplan `
                -state .\Dev\dev.tfstate `
                -var-file .\Dev\dev.tfvars

# Deploy infrastructure (Dev)
terraform apply -state .\Dev\dev.tfstate `
                .\Dev\dev.tfplan

# Plan & Preview changes (Test) environment
terraform plan  -out .\Test\test.tfplan `
                -state .\Test\test.tfstate `
                -var-file .\Test\test.tfvars

# Deploy infrastructure (Test)
terraform apply -state .\Test\test.tfstate `
                .\Test\test.tfplan

# Plan & Preview changes (Prod) environment
terraform plan  -out .\Prod\prod.tfplan `
                -state .\Prod\prod.tfstate `
                -var-file .\Prod\prod.tfvars

# Deploy infrastructure (Prod)
terraform apply -state .\Prod\prod.tfstate `
                .\Prod\prod.tfplan

# Destroy environment (Dev)
terraform destroy   -state .\Dev\dev.tfstate `
                    -var-file .\Dev\dev.tfvars

# Destroy environment (Test)
terraform destroy   -state .\Test\test.tfstate `
                    -var-file .\Test\test.tfvars

# Destroy environment (Prod)
terraform destroy   -state .\Prod\prod.tfstate `
                    -var-file .\Prod\prod.tfvars