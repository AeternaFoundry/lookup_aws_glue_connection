variable "glue_connection_lookup" {
  description = <<EOT
Map of glue_connection_lookup, attributes below
Required:
    - id
Optional:
    - region
    - tags
EOT

  type = map(object({
    id     = string
    region = optional(string)
    tags   = optional(map(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

