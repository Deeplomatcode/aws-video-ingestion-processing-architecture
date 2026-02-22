output "ingestion_bucket_name" {
  description = "Name of the S3 ingestion bucket"
  value       = aws_s3_bucket.ingestion_bucket.id
}

output "sns_topic_arn" {
  description = "ARN of the SNS topic"
  value       = aws_sns_topic.notifications.arn
}
