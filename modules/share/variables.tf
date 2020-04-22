variable "name" {
  description = "The storage share name"
  type        = string
}

variable "quota" {
  description = "The maximum size of the share in GB"
  default     = 5120
  type        = number
}

variable "account" {
  description = "The storage account configuration"
  type = object({
    name = string
    keys = list(string)
  })
}
