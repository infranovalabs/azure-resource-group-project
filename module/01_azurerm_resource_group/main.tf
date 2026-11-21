# ******************************Simple resource group creation using for_each Scenario-1******************************

resource "azurerm_resource_group" "rg1" {
  for_each = var.resource_group
  name     = each.value.name
  location = each.value.location
  tags     = local.common_tags
}

# ******************************Advance resource group creation using for_each and ternary_operator Scenario-2******************************

# Ternary operator (condition ? true : false)
# A ternary operator checks a condition and returns one of two values.
# Syntax: condition ? value_if_true : value_if_false


resource "azurerm_resource_group" "rg2" {
  for_each = var.resource_group2
  name     = each.value.environment == "prod" ? "rg-prod-ci-001" : "rg-dev-ci-001"
  location = each.value.environment == "prod" ? "east us" : "Central India"
  tags = merge(
    { environment = each.value.environment == "prod" ? "Production" : "Development" }, local.common_tags
  )

}

# ******************************Advance resource group creation using AND(&&) with count and for_each Scenario-3******************************

# | Operator | Meaning |
# |---|---|
# | && | AND | Both conditions must be true. | Count meta argument
# | ! | NOT | Reverses the condition (True becomes False and False becomes True). |

resource "azurerm_resource_group" "rg3" {

  count = ( var.environment == "dev" &&  var.location == "Central India" ) ? 1 : 0

  name     = var.resource_group3
  location = var.location

  tags = merge(
    {environment = var.environment == "dev" ? "Development" : "Production" }, local.common_tags
  )
}

# | Operator | Meaning |
# |---|---|
# | && | AND | Both conditions must be true. | for_each meta argument

resource "azurerm_resource_group" "rg4" {
  for_each = {
    for key, value in var.resource_group4 :
    key => value
    if value.environment == "dev" &&
       value.location == "Central India"
  }
  name     = each.value.name
  location = each.value.location

  tags = {
    Environment = "Development"
  }
}

# ******************************Advance resource group creation using OR(||) with count and for_each Scenario-4******************************

# | Operator | Meaning |
# |---|---|
# | || | OR | At least one condition must be true. |

resource "azurerm_resource_group" "rg5" {

  count = ( var.environment5 == "dev" ||  var.environment5 == "prod" ) ? 1 : 0

  name     = var.resource_group5
  location = var.location5

  tags = merge(
    {environment = var.environment == "dev" ? "Development" : "Production" }, local.common_tags
  )
}

resource "azurerm_resource_group" "rg6" {
  for_each = {
    for key, value in var.resource_group6 :
    key => value
    if value.environment == "dev" || value.environment == "prod"
  }
    name = each.value.name
    location = each.value.location

    tags = merge(
    {environment = var.environment == "dev" ? "Development" : "Production" }, local.common_tags
  )
  }
    
# ******************************Advance resource group creation using NOT(!) count and for_each Scenario-7******************************

# ! = NOT - Reverses the condition.
# != = NOT EQUAL - Checks whether two values are not equal.

resource "azurerm_resource_group" "rg7" {

  count = (!(var.environment7)) ? 1 : 0

  name     = var.resource_group7
  location = var.location7

  tags = merge(
    {environment = var.environment == "dev" ? "Development" : "Production" }, local.common_tags
  )
}

resource "azurerm_resource_group" "rg8" {

  count = (var.environment8 != "prod") ? 1 : 0

  name     = var.resource_group8
  location = var.location8
  tags = merge(
    {environment = var.environment == "dev" ? "Development" : "Production" }, local.common_tags
  )
}