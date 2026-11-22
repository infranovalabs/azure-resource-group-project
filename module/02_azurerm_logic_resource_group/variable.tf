variable "environment1" {
  description = "Deployment Environment"
  type        = string
  default     = "dev"

  validation {
    condition = contains(
      ["DEV", "TEST", "STAGE", "PROD"],
      var.environment1
    )

    error_message = "Environment must be DEV, TEST, STAGE or PROD."
  }
}

variable "location1" {
  description = "Location for the first resource group"
  type        = string
  default     = "East US"
}

variable "location2" {
  description = "Location for the second resource group"
  type        = string
  default     = "West US"
}


variable "project" {
  type        = string
  description = "Project name"
}

variable "environment2" {
  type        = string
  description = "Environment name"
}

variable "location3" {
  type        = string
  description = "Azure region"
}

variable "number" {
  type        = number
  description = "Resource number"
}