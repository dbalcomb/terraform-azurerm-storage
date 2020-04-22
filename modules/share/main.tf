resource "azurerm_storage_share" "main" {
  name                 = var.name
  storage_account_name = var.account.name
  quota                = var.quota
}
