resource "oci_fleet_apps_management_property" "fleet_apps_management_properties" {
  for_each = var.fleet_apps_management_properties

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  selection      = each.value.selection
  value_type     = each.value.value_type
  defined_tags   = each.value.defined_tags
  freeform_tags  = each.value.freeform_tags
  values         = each.value.values

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

