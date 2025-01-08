variable "assessment_name" {
  description = "The name of the assessment."
  type        = string
}

variable "prefix" {
  description = "The prefix to apply to the bucket name."
  type        = string
  default    = "demo"
}

variable "bucket_name" {
  description = "The name of the S3 bucket to store the assessment reports."
  type        = string
}

variable "owner_roles" {
  description = "The IAM roles to associate with the assessment."
  type        = list(string)
}

variable "framework_id" {
  description = "The id of the framework to use for the assessment."
  type        = string
}

variable "framework_type"{
  description = "The type of the framework to use for the assessment."
  type        = string
  default     = "Standard"
}

variable "target_accounts" {
  description = "The AWS account IDs to assess."
  type        = list(string)
} 
