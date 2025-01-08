variable "prefix" {
  description = "Prefix to be used for all resources"
  type        = string
}

variable "assessment_name" {
  description = "Name of the assessment"
  type        = string
}

variable "kms_key_id" {
  description = "KMS key to be used for all resources"
  type        = string
}

variable "target_accounts" {
  description = "List of account IDs to be assessed"
  type        = list(string)
}

variable "framework_id" {
  description = "The ID of the framework to be used for the assessment"
  type        = string
  default     = "Statement on Standards for Attestations Engagement (SSAE) No. 18, Service Organizations Controls (SOC) Report 2"
}

variable "owner_roles" {
  description = "List of ARNs of the roles that own the resources to be assessed"
  type        = list(string)
}

variable "logging_bucket_name" {
  description = "Name of the bucket to store logs"
  type        = string
}
