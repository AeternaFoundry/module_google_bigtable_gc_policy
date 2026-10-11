output "bigtable_gc_policies_id" {
  description = "Map of id values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no id are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigtable_gc_policies_column_family" {
  description = "Map of column_family values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no column_family are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => v.column_family if v.column_family != null && length(v.column_family) > 0 }
}
output "bigtable_gc_policies_deletion_policy" {
  description = "Map of deletion_policy values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigtable_gc_policies_gc_rules" {
  description = "Map of gc_rules values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no gc_rules are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => v.gc_rules if v.gc_rules != null && length(v.gc_rules) > 0 }
}
output "bigtable_gc_policies_ignore_warnings" {
  description = "Map of ignore_warnings values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no ignore_warnings are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => v.ignore_warnings if v.ignore_warnings != null }
}
output "bigtable_gc_policies_instance_name" {
  description = "Map of instance_name values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no instance_name are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => v.instance_name if v.instance_name != null && length(v.instance_name) > 0 }
}
output "bigtable_gc_policies_max_age" {
  description = "Map of max_age values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no max_age are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => one(v.max_age) if v.max_age != null && length(v.max_age) > 0 }
}
output "bigtable_gc_policies_max_version" {
  description = "Map of max_version values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no max_version are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => v.max_version if v.max_version != null && length(v.max_version) > 0 }
}
output "bigtable_gc_policies_mode" {
  description = "Map of mode values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no mode are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "bigtable_gc_policies_project" {
  description = "Map of project values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no project are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigtable_gc_policies_table" {
  description = "Map of table values across all bigtable_gc_policies, keyed the same as var.bigtable_gc_policies except keys with no table are omitted"
  value       = { for k, v in google_bigtable_gc_policy.bigtable_gc_policies : k => v.table if v.table != null && length(v.table) > 0 }
}

