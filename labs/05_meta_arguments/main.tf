data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

resource "aws_s3_bucket" "buckets_from_map" {
  for_each = var.buckets_map

  bucket = "${each.value}-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.region}"

  tags = {
    "Name" = each.key
  }
}

resource "aws_s3_bucket" "buckets_from_set" {
  for_each = var.buckets_set

  bucket = "${each.value}-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.region}"
}
