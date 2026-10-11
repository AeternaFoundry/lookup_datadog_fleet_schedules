data "datadog_fleet_schedules" "fleet_schedules_lookup" {
  for_each = var.fleet_schedules_lookup

}

