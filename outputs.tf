output "service_principals_lookup_id" {
  description = "Map of id values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_principals_lookup_client_ids" {
  description = "Map of client_ids values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.client_ids if v.client_ids != null && length(v.client_ids) > 0 }
}
output "service_principals_lookup_display_names" {
  description = "Map of display_names values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.display_names if v.display_names != null && length(v.display_names) > 0 }
}
output "service_principals_lookup_ignore_missing" {
  description = "Map of ignore_missing values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.ignore_missing if v.ignore_missing != null }
}
output "service_principals_lookup_object_ids" {
  description = "Map of object_ids values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.object_ids if v.object_ids != null && length(v.object_ids) > 0 }
}
output "service_principals_lookup_return_all" {
  description = "Map of return_all values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.return_all if v.return_all != null }
}
output "service_principals_lookup_service_principals" {
  description = "Map of service_principals values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.service_principals if v.service_principals != null && length(v.service_principals) > 0 }
}

