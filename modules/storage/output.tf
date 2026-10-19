output "bucket_ids" {
  description = "IDs of the managed S3 buckets"
  value       = { for key, bucket in aws_s3_bucket.storage : key => bucket.id }
}

output "bucket_arns" {
  description = "ARNs of the managed S3 buckets"
  value       = { for key, bucket in aws_s3_bucket.storage : key => bucket.arn }
}

output "bucket_names" {
  description = "Names of the managed S3 buckets"
  value       = { for key, bucket in aws_s3_bucket.storage : key => bucket.bucket }
}