resource "aws_s3_bucket_ownership_controls" "s3_bucket_ownership_controls" {
  for_each = var.s3_bucket_ownership_controls

  bucket = each.value.bucket
  region = each.value.region

  rule {
    object_ownership = each.value.rule.object_ownership
  }
}

