# ==========================================================
# Terraform Variables
# ==========================================================

variable "environment" {
  description = "The environment for deployment (i.e production env)"
  type        = string
  default     = "production"
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}
