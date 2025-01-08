resource "aws_s3_bucket" "audit_manager_report" {
  bucket        = "${var.prefix}-audit-manager-report-${data.aws_region.current.name}"
  force_destroy = true

  tags = {
    Name        = "${var.prefix}-audit-manager-report-${data.aws_region.current.name}"
    Environment = "Sandbox"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "kms_sse" {
  bucket = aws_s3_bucket.audit_manager_report.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = var.kms_key_id
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket = aws_s3_bucket.audit_manager_report.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.audit_manager_report.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.audit_manager_report.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "logging" {
  bucket = aws_s3_bucket.audit_manager_report.id

  target_bucket = var.logging_bucket_name
  target_prefix = "log/"
}