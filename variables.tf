variable "iam_users" {
  description = <<EOT
Map of iam_users, attributes below
Required:
    - name
Optional:
    - force_destroy
    - path
    - permissions_boundary
    - tags
    - tags_all
EOT

  type = map(object({
    name                 = string
    force_destroy        = optional(bool)
    path                 = optional(string)
    permissions_boundary = optional(string)
    tags                 = optional(map(string))
    tags_all             = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iam_users : (
        v.permissions_boundary == null || (length(v.permissions_boundary) >= 0 && length(v.permissions_boundary) <= 2048)
      )
    ])
    error_message = "must be between 0 and 2048 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

