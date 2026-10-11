output "fleet_schedules_lookup_schedules" {
  description = "Map of schedules values across all fleet_schedules_lookup, keyed the same as var.fleet_schedules_lookup except keys with no schedules are omitted"
  value       = { for k, v in data.datadog_fleet_schedules.fleet_schedules_lookup : k => v.schedules if v.schedules != null && length(v.schedules) > 0 }
}
output "fleet_schedules_lookup_total_count" {
  description = "Map of total_count values across all fleet_schedules_lookup, keyed the same as var.fleet_schedules_lookup except keys with no total_count are omitted"
  value       = { for k, v in data.datadog_fleet_schedules.fleet_schedules_lookup : k => v.total_count if v.total_count != null }
}

