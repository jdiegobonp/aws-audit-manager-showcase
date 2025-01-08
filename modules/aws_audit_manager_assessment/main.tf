data "aws_auditmanager_framework" "framework" {
  name           = var.framework_id
  framework_type = var.framework_type
}

resource "aws_auditmanager_assessment" "assessment" {
  name = var.assessment_name

  assessment_reports_destination {
    destination      = "s3://${var.bucket_name}"
    destination_type = "S3"
  }

  framework_id = data.aws_auditmanager_framework.framework.id

  dynamic "roles" {
    for_each = var.owner_roles
    iterator = role
    content {
      role_arn  = role.value
      role_type = "PROCESS_OWNER"
    }
  }
  
  dynamic "scope" {
    for_each = var.target_accounts
    iterator = account_id
    content {
      aws_accounts {
        id = account_id.value
      }
    }
  }
}
