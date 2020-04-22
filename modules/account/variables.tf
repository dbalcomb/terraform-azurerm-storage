variable "name" {
  description = "The storage account name"
  type        = string
}

variable "group" {
  description = "The target resource group"
  type        = string
}

variable "region" {
  description = "The target resource region"
  type        = string
}

variable "tier" {
  description = "The storage account tier"
  default     = "Standard"
  type        = string
}

variable "replication" {
  description = "The storage replication type"
  default     = "LRS"
  type        = string
}

variable "access" {
  description = "The storage access type"
  default     = "Hot"
  type        = string
}

variable "secure" {
  description = "Require secure file transfer"
  default     = true
  type        = bool
}

variable "tags" {
  description = "The resource tags"
  default     = {}
  type        = map(string)
}
