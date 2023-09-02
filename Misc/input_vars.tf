# Input Variables

# AWS Region
variable "aws_region" {
  description = "Region in which AWS resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment variable used as a prefix"
  type        = string
  value       = "staging"
}

variable "business_devision" {
  description = "Business Deivision where infrastructure is deployed"
  type        = string
  value       = "HR"
}
