output "service_principals_lookup_id" {
  description = "Map of id values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.id }
}
output "service_principals_lookup_client_ids" {
  description = "Map of client_ids values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.client_ids }
}
output "service_principals_lookup_display_names" {
  description = "Map of display_names values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.display_names }
}
output "service_principals_lookup_ignore_missing" {
  description = "Map of ignore_missing values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.ignore_missing }
}
output "service_principals_lookup_object_ids" {
  description = "Map of object_ids values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.object_ids }
}
output "service_principals_lookup_return_all" {
  description = "Map of return_all values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.return_all }
}
output "service_principals_lookup_service_principals" {
  description = "Map of service_principals values across all service_principals_lookup, keyed the same as var.service_principals_lookup"
  value       = { for k, v in data.azuread_service_principals.service_principals_lookup : k => v.service_principals }
}

