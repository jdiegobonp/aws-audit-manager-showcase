# aws-audit-manager-showcase
This project provides a Terraform module for developing assessments in AWS Audit Manager. The module simplifies the creation and management of audit assessments, ensuring compliance with best practices and governance standards.

## Project Structure


```
├── modules
│   └── audit_manager_assessments
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── stacks
│   ├── management_account
│   │   ├── main.tf
│   │   └── variables.tf
│   └── audit_account
│       ├── main.tf
│       └── variables.tf
└── README.md
```

### Modules

#### `audit_manager_assessments`

This module allows you to create and manage assessments in AWS Audit Manager. It includes capabilities to:

- Define assessment frameworks and controls.
- Automate evidence collection.
- Generate reports for compliance and audit readiness.

### Stacks

#### Management Account

The management_account stack is responsible for deploying resources in the management account. It creates the KMS Customer Key to be used for AWS Audit Manager, which is also shared with the Audit Account. Finally, it sets up AWS Audit Manager, delegating administration to the Audit Account and selecting the created KMS Key.

- **Location**: `stacks/management_account/`
- **Usage**: To deploy this stack, navigate to the `management_account` directory, execute `terraform init` to initialize the provider, followed by `terraform apply` to deploy the resources.

#### Audit Account

The `audit_account` stack is designed for deploying resources specific to the audit account. It utilizes the `audit_manager_assessments` module to establish the assessments tailored for auditing purposes.

- **Location**: `stacks/audit_account/`
- **Usage**: To deploy this stack, navigate to the `audit_account` directory, execute `terraform init`, and then run `terraform apply` to provision the required resources.

### Requirements

- Terraform 1.8
- AWS credentials configured in your environment
- IAM permissions to manage AWS Audit Manager resources

### Getting Started

1. Clone the repository.
2. Navigate to either the `management_account` or `audit_account` stack directory.
3. Execute the following commands:

```bash
terraform init
terraform apply
```

# Contributing
Feel free to submit issues or pull requests to improve the module or stacks. Any contributions are welcome!
