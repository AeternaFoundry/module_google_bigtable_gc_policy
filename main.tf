resource "google_bigtable_gc_policy" "bigtable_gc_policies" {
  for_each = var.bigtable_gc_policies

  column_family   = each.value.column_family
  instance_name   = each.value.instance_name
  table           = each.value.table
  deletion_policy = each.value.deletion_policy
  gc_rules        = each.value.gc_rules
  ignore_warnings = each.value.ignore_warnings
  mode            = each.value.mode
  project         = each.value.project

  dynamic "max_age" {
    for_each = each.value.max_age != null ? [each.value.max_age] : []
    content {
      days     = max_age.value.days
      duration = max_age.value.duration
    }
  }

  dynamic "max_version" {
    for_each = each.value.max_version != null ? each.value.max_version : []
    content {
      number = max_version.value.number
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

