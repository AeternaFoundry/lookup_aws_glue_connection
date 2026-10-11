data "aws_glue_connection" "glue_connection_lookup" {
  for_each = var.glue_connection_lookup

  id     = each.value.id
  region = each.value.region
  tags   = each.value.tags
}

