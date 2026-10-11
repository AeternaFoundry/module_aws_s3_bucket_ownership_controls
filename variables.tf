variable "s3_bucket_ownership_controls" {
  description = <<EOT
Map of s3_bucket_ownership_controls, attributes below
Required:
    - bucket
    - rule (block):
        - object_ownership (required)
Optional:
    - region
EOT

  type = map(object({
    bucket = string
    region = optional(string)
    rule = object({
      object_ownership = string
    })
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

