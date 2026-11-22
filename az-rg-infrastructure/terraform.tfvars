resource_group = {
  "simple_rg" = {
    name     = "infra-basic-rg"
    location = "east us"
  }
}

resource_group2 = {
  "advance_rg1" = {
    environment = "prod"
  }

  advance_rg2 = {
    environment = "dev"
  }
}

environment = "dev"
location = "Central India"
resource_group3 = "rg-dev-ci-003"

resource_group4 = {
  rg1 = {
    name        = "rg-dev-ci-004"
    environment = "dev"
    location    = "Central India"
  }

  rg2 = {
    name        = "rg-prod-ci-004"
    environment = "prod"
    location    = "West US"
  }
}

environment5 = "dev"
resource_group5 = "rg-dev-ci-005"
location5 = "central india"

resource_group6 = {
  "dev_rg6" = {
    environment = "dev"
    name = "rg-dev-ci-006"
    location = "japan east"
    
  }

"lab_rg6" = {
  environment = "lab"
  name = "rg-lab-ci-006"
  location = "japan east"
}
}

resource_group7 = "rg-practice-ci-007"
location7 = "west us"

resource_group8 = "rg-dev-ci-008"
location8 = "west us"

environment1 = "DEV"

project     = "azure"
environment2 = "dev"
location3    = "Central India"
number      = 111