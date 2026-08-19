variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Microsoft Entra Tenant ID"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where the Resource Group will be created"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "Tags to apply to the Resource Group"
  type        = map(string)

  default = {
    environment = "dev"
    managed_by  = "terraform"
  }
}