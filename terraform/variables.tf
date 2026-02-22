variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "Project identifier"
  type        = string
  default     = "video-ingestion-pipeline"
}
