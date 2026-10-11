output "s3_bucket_ownership_controls_id" {
  description = "Map of id values across all s3_bucket_ownership_controls, keyed the same as var.s3_bucket_ownership_controls"
  value       = { for k, v in aws_s3_bucket_ownership_controls.s3_bucket_ownership_controls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3_bucket_ownership_controls_bucket" {
  description = "Map of bucket values across all s3_bucket_ownership_controls, keyed the same as var.s3_bucket_ownership_controls"
  value       = { for k, v in aws_s3_bucket_ownership_controls.s3_bucket_ownership_controls : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_ownership_controls_region" {
  description = "Map of region values across all s3_bucket_ownership_controls, keyed the same as var.s3_bucket_ownership_controls"
  value       = { for k, v in aws_s3_bucket_ownership_controls.s3_bucket_ownership_controls : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3_bucket_ownership_controls_rule" {
  description = "Map of rule values across all s3_bucket_ownership_controls, keyed the same as var.s3_bucket_ownership_controls"
  value       = { for k, v in aws_s3_bucket_ownership_controls.s3_bucket_ownership_controls : k => one(v.rule) if v.rule != null && length(v.rule) > 0 }
}

