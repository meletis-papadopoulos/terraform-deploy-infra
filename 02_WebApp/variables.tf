# Variable name
variable "resource_group_name" {
  # Default value for the variable
  default     = "example-resources"
  type        = string
  description = "RG name in Azure"
}

variable "resource_group_location" {
  default     = "West Europe"
  type        = string
  description = "RG location in Azure"
}

variable "app_service_plan_name" {
  default     = "example-appserviceplan"
  type        = string
  description = "App Service Plan name in Azure"
}

variable "app_service_name" {
  default     = "terraform-demo-mel"
  type        = string
  description = "App Service name in Azure"
}