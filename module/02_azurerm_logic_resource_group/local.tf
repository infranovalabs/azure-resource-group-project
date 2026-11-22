locals {
  environment = "PROD"
  project     = "AZUE-INFRA"

  resource_group_name = lower(
    "rg-${local.project}-${local.environment}-001"
  )
}

locals {
  resource_group_name2 = format(
    "rg-%s-%s-ci-%03d",
    var.project,
    var.environment2,
    var.number
  )
}