# Account

This module configures an Azure Storage account that can be used to create file
shares that map to distributed applications.

## Usage

```hcl
module "storage_account" {
  source = "github.com/dbalcomb/terraform-azurerm-storage//modules/account"

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
```

## Inputs

| Name          | Type     | Default      | Description                  |
| ------------- | -------- | ------------ | ---------------------------- |
| `name`        | `string` |              | The storage account name     |
| `group`       | `string` |              | The target resource group    |
| `region`      | `string` |              | The target resource region   |
| `tier`        | `string` | `"Standard"` | The storage account tier     |
| `replication` | `string` | `"LRS"`      | The storage replication type |
| `access`      | `string` | `"Hot"`      | The storage access type      |
| `secure`      | `bool`   | `true`       | Require secure file transfer |
| `tags`        | `object` | `{}`         | The resource tags            |
| `tags.*`      | `string` |              | The tag value                |

## Outputs

| Name          | Type     | Description                     |
| ------------- | -------- | ------------------------------- |
| `id`          | `string` | The storage account ID          |
| `name`        | `string` | The storage account name        |
| `group`       | `string` | The target resource group       |
| `region`      | `string` | The target resource region      |
| `tier`        | `string` | The storage account tier        |
| `replication` | `string` | The storage replication type    |
| `access`      | `string` | The storage access type         |
| `secure`      | `bool`   | Require secure file transfer    |
| `endpoint`    | `string` | The file storage endpoint URL   |
| `host`        | `string` | The file storage endpoint host  |
| `keys`        | `array`  | The storage account access keys |

## References

- [Storage Account Overview](https://docs.microsoft.com/en-gb/azure/storage/common/storage-account-overview)
