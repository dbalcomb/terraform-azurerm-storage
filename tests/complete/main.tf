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
