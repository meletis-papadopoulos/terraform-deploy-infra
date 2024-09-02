variable "subscription_id" {
  type        = string
  description = "Subscription ID for Azure"
}

variable "resource_group_names" {
  type = map(any)
  default = {
    dev  = "dev-rg"
    test = "test-rg"
    prod = "prod-rg"
  }
}