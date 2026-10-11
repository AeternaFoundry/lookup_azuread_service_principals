variable "service_principals_lookup" {
  description = <<EOT
Map of service_principals_lookup, attributes below
Optional:
    - client_ids
    - display_names
    - ignore_missing
    - object_ids
    - return_all
EOT

  type = map(object({
    client_ids     = optional(list(string))
    display_names  = optional(list(string))
    ignore_missing = optional(bool)
    object_ids     = optional(list(string))
    return_all     = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_principals_lookup : (
        v.client_ids == null || (alltrue([for x in v.client_ids : can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", x))]))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principals_lookup : (
        v.display_names == null || (alltrue([for x in v.display_names : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principals_lookup : (
        v.object_ids == null || (alltrue([for x in v.object_ids : can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", x))]))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

