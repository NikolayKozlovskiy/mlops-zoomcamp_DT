variable "aws_region" {
  description = "AWS region to create resources"
  default     = "eu-central-1"
}
# serves as a tag
variable "project_id" {
  description = "project_id"
  default = "mlops-zoomcamp"
}

variable "source_stream_name" {
  description = ""
  # my change
  default = "ride_events"
}

variable "output_stream_name" {
  description = ""
}

variable "model_bucket" {
  description = "s3_bucket"
}

variable "lambda_function_local_path" {
  description = ""
}

variable "docker_image_local_path" {
  description = ""
}

variable "ecr_repo_name" {
  description = ""
}

variable "lambda_function_name" {
  description = ""
}