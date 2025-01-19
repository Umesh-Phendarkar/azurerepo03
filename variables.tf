variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "resource_group_location" {
  description = "The location/region for the Resource Group"
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "The environment tag for the Resource Group"
  type        = string
  default     = "Development"
}
