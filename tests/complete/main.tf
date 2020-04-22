module "storage" {
  source = "../../"

  name        = "mystorageaccount"
  group       = "my-storage-rg"
  region      = "uksouth"
  tier        = "Premium"
  replication = "LRS"
  access      = "Cool"
  secure      = false

  tags = {
    storage = "cool"
  }
}

module "storage_share" {
  source = "../../modules/share"

  name    = "myshare"
  quota   = 2000
  account = module.storage
}
