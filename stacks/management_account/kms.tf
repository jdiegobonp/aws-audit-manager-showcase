module "kms_key_audit_manager" {
  source = "git@github.com:terraform-aws-modules/terraform-aws-kms.git?ref=v3.1.1"

  deletion_window_in_days = 7
  description             = "KMS Key to encrypt data for AWS Audit Manager"
  enable_key_rotation     = true
  is_enabled              = true
  key_usage               = "ENCRYPT_DECRYPT"
  multi_region            = false

  # Policy
  enable_default_policy = true
  key_administrators    = var.kms_key_admins
  key_users             = var.kms_key_users
  aliases               = ["alias/aws/auditmanager/key"]
  tags                  = var.tags
}