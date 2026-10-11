variable "fleet_apps_management_properties" {
  description = <<EOT
Map of fleet_apps_management_properties, attributes below
Required:
    - compartment_id
    - display_name
    - selection
    - value_type
Optional:
    - defined_tags
    - freeform_tags
    - values
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    display_name   = string
    selection      = string
    value_type     = string
    defined_tags   = optional(map(string))
    freeform_tags  = optional(map(string))
    values         = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

