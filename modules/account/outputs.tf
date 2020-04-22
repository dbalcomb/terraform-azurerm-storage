output "id" {
  description = "The storage account ID"
  value       = azurerm_storage_account.main.id
}

output "name" {
  description = "The storage account name"
  value       = azurerm_storage_account.main.name
}

output "group" {
  description = "The target resource group"
  value       = azurerm_storage_account.main.resource_group_name
}

output "region" {
  description = "The target resource region"
  value       = azurerm_storage_account.main.location
}

output "tier" {
  description = "The storage account tier"
  value       = azurerm_storage_account.main.account_tier
}

output "replication" {
  description = "The storage replication type"
  value       = azurerm_storage_account.main.account_replication_type
}

output "access" {
  description = "The storage access type"
  value       = azurerm_storage_account.main.access_tier
}

output "secure" {
  description = "Require secure file transfer"
  value       = azurerm_storage_account.main.enable_https_traffic_only
}

output "endpoint" {
  description = "The file storage endpoint URL"
  value       = azurerm_storage_account.main.primary_file_endpoint
}

output "host" {
  description = "The file storage endpoint host"
  value       = azurerm_storage_account.main.primary_file_host
}

output "keys" {
  description = "The storage account access keys"
  sensitive   = true
  value = [
    azurerm_storage_account.main.primary_access_key,
    azurerm_storage_account.main.secondary_access_key,
  ]
}
