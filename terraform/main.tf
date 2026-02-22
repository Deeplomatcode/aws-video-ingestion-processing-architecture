# S3 Ingestion Bucket
resource "aws_s3_bucket" "ingestion_bucket" {
  bucket = "${var.project_name}-ingestion"

  tags = {
    Project   = var.project_name
    ManagedBy = "Terraform"
  }
}

# SNS Topic for Notifications
resource "aws_sns_topic" "notifications" {
  name = "${var.project_name}-notifications"

  tags = {
    Project   = var.project_name
    ManagedBy = "Terraform"
  }
}
