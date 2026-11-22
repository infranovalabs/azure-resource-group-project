variable "resource_group" {
description = "Simple resource group creation"
  type = map(object({
    name = string
    location = string
  }))
}

variable "resource_group2" {
  description = "create resource group using operator"
  type = map(object({
    environment = string  
  }))
}

variable "environment" {
  description = "environment value should mentioned here"
  type = string
}

variable "location" {
  description = "location will mentioned here"
}

variable "resource_group3" {
  default = "resource hroup will mentioned here"
}

variable "resource_group4" {
  description = "will use for_each meta argument"
  type = map(object({
    name = string
    environment = string
    location = string
  }))
}

variable "resource_group5" {
  description = "resource group name will mention here"
  type = string
  }

  variable "location5" {
    description = "location name is mention here"
    type = string
  }

  variable "environment5" {
    description = "environment name is mentioned here"
    type = string
  }

variable "resource_group6" {
  description = "resource group value will mention here"
  type = map(object({
    name = string
    location = string
    environment = string
  }))
  
}

variable "resource_group7" {
type = string  
}

variable "location7" {
  type = string
}

variable "resource_group8" {
type = string  
}

variable "location8" {
  type = string
}

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