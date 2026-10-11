variable "fleet_schedules_lookup" {
  description = <<EOT
Map of fleet_schedules_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

