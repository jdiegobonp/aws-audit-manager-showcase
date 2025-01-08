# Audit Manager Assessments
This module enables the automation and management of audit assessment processes in AWS through AWS Audit Manager. This module facilitates the configuration of customized audit assessments, ensuring compliance with regulations and best practices. It includes features to define assessment criteria, automate evidence collection, and generate detailed reports on the status of audits, thereby optimizing risk management and continuous improvement within the organization.

```hcl
module "assessment" {
  source          = "./modules/aws_audit_manager_assessment"
  assessment_name = "my_assessment"
  bucket_name     = "my-bucket-for-audit-manager-assessment"
  owner_roles     = ["arn:aws:iam::123456789123:role/owner_group"]
  framework_id    = "Statement on Standards for Attestations Engagement (SSAE) No. 18, Service Organizations Controls (SOC) Report 2"
  target_accounts = ["123456789123"]
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.82.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.82.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_auditmanager_assessment.assessment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/auditmanager_assessment) | resource |
| [aws_auditmanager_framework.framework](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/auditmanager_framework) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assessment_name"></a> [assessment\_name](#input\_assessment\_name) | The name of the assessment. | `string` | n/a | yes |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the S3 bucket to store the assessment reports. | `string` | n/a | yes |
| <a name="input_framework_id"></a> [framework\_id](#input\_framework\_id) | The id of the framework to use for the assessment. | `string` | n/a | yes |
| <a name="input_framework_type"></a> [framework\_type](#input\_framework\_type) | The type of the framework to use for the assessment. | `string` | `"Standard"` | no |
| <a name="input_owner_roles"></a> [owner\_roles](#input\_owner\_roles) | The IAM roles to associate with the assessment. | `list(string)` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | The prefix to apply to the bucket name. | `string` | `"demo"` | no |
| <a name="input_target_accounts"></a> [target\_accounts](#input\_target\_accounts) | The AWS account IDs to assess. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | arn of the assessment object |
| <a name="output_id"></a> [id](#output\_id) | id of the assessment object |
| <a name="output_owner_roles"></a> [owner\_roles](#output\_owner\_roles) | roles of the assessment object |
