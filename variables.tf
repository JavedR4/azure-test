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

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}