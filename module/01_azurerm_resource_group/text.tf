# variable "subscription_id" {
#   description = "Azure Subscription ID"
#   type        = string
#   sensitive   = true
# }

# variable "project_name" {
#   description = "Project Name"
#   type        = string
#   default     = "terraform-advanced"

#   validation {
#     condition = (
#       length(trimspace(var.project_name)) > 0 &&
#       can(regex("^[a-z0-9-]+$", var.project_name))
#     )

#     error_message = "Project name must contain lowercase letters, numbers and hyphens only."
#   }
# }

# variable "environment" {
#   description = "Deployment Environment"
#   type        = string
#   default     = "dev"

#   validation {
#     condition = contains(
#       ["dev", "test", "stage", "prod"],
#       var.environment
#     )

#     error_message = "Environment must be dev, test, stage or prod."
#   }
# }

# variable "location" {
#   description = "Azure Region"
#   type        = string
#   default     = "Central India"

#   validation {
#     condition = contains(
#       ["central india", "west us", "east us"],
#       lower(var.location)
#     )

#     error_message = "Unsupported Azure location."
#   }
# }

# variable "instance_number" {
#   description = "Resource Number"
#   type        = number
#   default     = 1

#   validation {
#     condition = (
#       var.instance_number >= 1 &&
#       var.instance_number <= 999 &&
#       floor(var.instance_number) == var.instance_number
#     )

#     error_message = "Instance number must be an integer between 1 and 999."
#   }
# }

# variable "common_tags" {
#   description = "Common Azure Resource Tags"

#   type = map(string)

#   default = {
#     project    = "terraform-advanced"
#     managed_by = "terraform"
#     owner      = "infrastructure"
#   }
# }