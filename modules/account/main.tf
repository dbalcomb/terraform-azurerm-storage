resource "azurerm_storage_account" "main" {
  name                      = var.name
  resource_group_name       = var.group
  location                  = var.region
  account_tier              = var.tier
  account_replication_type  = var.replication
  access_tier               = var.access
  enable_https_traffic_only = var.secure
  tags                      = var.tags
}
