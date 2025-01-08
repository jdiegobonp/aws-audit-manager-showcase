output "arn" {
  description = "arn of the assessment object"
  value = aws_auditmanager_assessment.assessment.arn
}

output "id" {
  description = "id of the assessment object"
  value = aws_auditmanager_assessment.assessment.id
}

output "owner_roles" {
  description = "roles of the assessment object"
  value = aws_auditmanager_assessment.assessment.roles_all
}
