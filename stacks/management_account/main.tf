resource "aws_auditmanager_account_registration" "registration" {
  delegated_admin_account = var.delegated_admin_account
  kms_key                 = module.kms_key_audit_manager.key_arn
  deregister_on_destroy   = true
}

