module "assessment" {
  source          = "../../modules/aws_audit_manager_assessment"
  assessment_name = var.assessment_name
  bucket_name     = aws_s3_bucket.audit_manager_report.bucket
  owner_roles     = var.owner_roles
  framework_id    = var.framework_id
  target_accounts = var.target_accounts
}
