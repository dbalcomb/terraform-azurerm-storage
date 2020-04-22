module "account" {
  source = "./modules/account"

  name        = var.name
  group       = var.group
  region      = var.region
  tier        = var.tier
  replication = var.replication
  access      = var.access
  secure      = var.secure
  tags        = var.tags
}
