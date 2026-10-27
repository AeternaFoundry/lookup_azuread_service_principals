data "azuread_service_principals" "service_principals_lookup" {
  for_each = var.service_principals_lookup

  client_ids     = each.value.client_ids
  display_names  = each.value.display_names
  ignore_missing = each.value.ignore_missing
  object_ids     = each.value.object_ids
  return_all     = each.value.return_all

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

