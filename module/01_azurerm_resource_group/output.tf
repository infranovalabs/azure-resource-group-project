output "simple_rg_name" {
  description = "created resource group name"
  value = {
    for key, rg in azurerm_resource_group.rg1 : 
    key => rg.name
  }
}

output "simple_rg_id" {
  description = "created resource group id"
  value = {
    for key, rg in azurerm_resource_group.rg1 : 
    key => rg.id
  }
}

output "simple_rg_location" {
  description = "resoure group location"
  value = {
    for key, rg in azurerm_resource_group.rg1 : 
    key => rg.location
  }
}