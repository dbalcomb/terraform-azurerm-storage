output "id" {
  description = "The storage account ID"
  value       = module.account.id
}

output "name" {
  description = "The storage account name"
  value       = module.account.name
}

output "group" {
  description = "The target resource group"
  value       = module.account.group
}

output "region" {
  description = "The target resource region"
  value       = module.account.region
}

output "tier" {
  description = "The storage account tier"
  value       = module.account.tier
}

output "replication" {
  description = "The storage replication type"
  value       = module.account.replication
}

output "access" {
  description = "The storage access type"
  value       = module.account.access
}

output "secure" {
  description = "Require secure file transfer"
  value       = module.account.secure
}

output "endpoint" {
  description = "The file storage endpoint URL"
  value       = module.account.endpoint
}

output "host" {
  description = "The file storage endpoint host"
  value       = module.account.host
}

output "keys" {
  description = "The storage account access keys"
  sensitive   = true
  value       = module.account.keys
}
