variable "delegated_admin_account" {
  type        = string
  description = "The AWS account ID of the delegated admin account."
}

variable "kms_key_admins" {
  type        = list(string)
  description = "The list of IAM users or roles that should be granted administrative access to the KMS key."
}

variable "kms_key_users" {
  type        = list(string)
  description = "The list of IAM users or roles that should be granted access to the KMS key for encryption and decryption."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the resources."
  default = {
    "ManagedBy" = "Terraform"
  }
}
