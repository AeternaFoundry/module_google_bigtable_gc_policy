variable "bigtable_gc_policies" {
  description = <<EOT
Map of bigtable_gc_policies, attributes below
Required:
    - column_family
    - instance_name
    - table
Optional:
    - deletion_policy
    - gc_rules
    - ignore_warnings
    - mode
    - project
    - max_age (block):
        - days (optional)
        - duration (optional)
    - max_version (block):
        - number (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    column_family   = string
    instance_name   = string
    table           = string
    deletion_policy = optional(string)
    gc_rules        = optional(string)
    ignore_warnings = optional(bool)
    mode            = optional(string)
    project         = optional(string)
    max_age = optional(object({
      days     = optional(number)
      duration = optional(string)
    }))
    max_version = optional(list(object({
      number = number
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bigtable_gc_policies : (
        v.gc_rules == null || (can(jsondecode(v.gc_rules)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.bigtable_gc_policies : (
        v.mode == null || (contains(["INTERSECTION", "UNION"], v.mode))
      )
    ])
    error_message = "must be one of: \"INTERSECTION\", \"UNION\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

