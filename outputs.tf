output "iam_users_id" {
  description = "Map of id values across all iam_users, keyed the same as var.iam_users"
  value       = { for k, v in aws_iam_user.iam_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_users_arn" {
  description = "Map of arn values across all iam_users, keyed the same as var.iam_users"
  value       = { for k, v in aws_iam_user.iam_users : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iam_users_force_destroy" {
  description = "Map of force_destroy values across all iam_users, keyed the same as var.iam_users"
  value       = { for k, v in aws_iam_user.iam_users : k => v.force_destroy if v.force_destroy != null }
}
output "iam_users_name" {
  description = "Map of name values across all iam_users, keyed the same as var.iam_users"
  value       = { for k, v in aws_iam_user.iam_users : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_users_path" {
  description = "Map of path values across all iam_users, keyed the same as var.iam_users"
  value       = { for k, v in aws_iam_user.iam_users : k => v.path if v.path != null && length(v.path) > 0 }
}
output "iam_users_permissions_boundary" {
  description = "Map of permissions_boundary values across all iam_users, keyed the same as var.iam_users"
  value       = { for k, v in aws_iam_user.iam_users : k => v.permissions_boundary if v.permissions_boundary != null && length(v.permissions_boundary) > 0 }
}
output "iam_users_tags" {
  description = "Map of tags values across all iam_users, keyed the same as var.iam_users"
  value       = { for k, v in aws_iam_user.iam_users : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iam_users_tags_all" {
  description = "Map of tags_all values across all iam_users, keyed the same as var.iam_users"
  value       = { for k, v in aws_iam_user.iam_users : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "iam_users_unique_id" {
  description = "Map of unique_id values across all iam_users, keyed the same as var.iam_users"
  value       = { for k, v in aws_iam_user.iam_users : k => v.unique_id if v.unique_id != null && length(v.unique_id) > 0 }
}

