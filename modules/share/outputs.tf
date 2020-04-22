output "id" {
  description = "The storage share ID"
  value       = azurerm_storage_share.main.id
}

output "name" {
  description = "The storage share name"
  value       = azurerm_storage_share.main.name
}

output "quota" {
  description = "The maximum size of the share in GB"
  value       = azurerm_storage_share.main.quota
}

output "account" {
  description = "The storage account configuration"
  value       = var.account
}

output "url" {
  description = "The storage share address"
  value       = azurerm_storage_share.main.url
}
