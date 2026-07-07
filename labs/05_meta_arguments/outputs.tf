output "bucket_a_name" {
  description = "Bucket A final name"
  value       = aws_s3_bucket.buckets_from_map["bucket-a"].bucket
}

output "bucket_0_name" {
  description = "Bucket 0 final name"
  value       = aws_s3_bucket.buckets_from_set["bucket-0"].bucket
}
