resource "azurerm_resource_group" "rg_logic1" {
  name     = lower("rg-${var.environment1}-ci-001")
  location = var.location1
}


resource "azurerm_resource_group" "rg_logic2" {
  name     = local.resource_group_name
  location = var.location2
}


resource "azurerm_resource_group" "rg_format1" {

  name     = local.resource_group_name2
  location = var.location3

  tags = {
    Project     = var.project
    Environment = var.environment2
    ManagedBy   = "Terraform"
  }
}