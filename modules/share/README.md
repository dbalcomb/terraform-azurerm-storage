# Share

This module configures an Azure Storage file share that can be used to store
files and make them accessible to distributed applications.

## Usage

```hcl
module "storage_account" {
  source = "github.com/dbalcomb/terraform-azurerm-storage//modules/account"

  # ...
}

module "storage_share" {
  source = "github.com/dbalcomb/terraform-azurerm-storage//modules/share"

  name    = "myshare"
  quota   = 2000
  account = module.storage_account
}
```

## Inputs

| Name             | Type     | Default | Description                         |
| ---------------- | -------- | ------- | ----------------------------------- |
| `name`           | `string` |         | The storage share name              |
| `quota`          | `number` | `5120`  | The maximum size of the share in GB |
| `account`        | `object` |         | The storage account configuration   |
| `account.name`   | `string` |         | The storage account name            |
| `account.keys`   | `list`   |         | The storage account access keys     |
| `account.keys.*` | `string` |         | The storage account access key      |

## Outputs

| Name      | Type     | Description                         |
| --------- | -------- | ----------------------------------- |
| `id`      | `string` | The storage share ID                |
| `name`    | `string` | The storage share name              |
| `quota`   | `number` | The maximum size of the share in GB |
| `account` | `object` | The storage account configuration   |
| `url`     | `string` | The storage share address           |

## Notes

* The storage account access keys are required but are currently unused. The
  plan is to allow future iterations of the module to automatically upload files
  to the share which would require authentication using an external tool.

## References

- [Create Azure File Share](https://docs.microsoft.com/en-gb/azure/storage/files/storage-how-to-create-file-share)
