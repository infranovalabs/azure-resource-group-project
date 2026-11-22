module "rg1" {
  source = "../module/01_azurerm_resource_group"
  resource_group = var.resource_group
  resource_group2 = var.resource_group2
  environment = var.environment
  location = var.location
  resource_group3 = var.resource_group3
  resource_group4 = var.resource_group4
  resource_group5 = var.resource_group5
  location5 = var.location5
  environment5 = var.environment5
  resource_group6 = var.resource_group6
  resource_group7 = var.resource_group7
  location7 = var.location7
  resource_group8 = var.resource_group8
  location8 = var.location8
  
}




module "rg2" {
  source = "../module/02_azurerm_logic_resource_group"
  environment1 = var.environment1
  location3 = var.location3
  project = var.project
  number = var.number
  environment2 = var.environment2
}
