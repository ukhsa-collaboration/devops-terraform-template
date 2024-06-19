# Module

This repository contains Terraform configurations for managing infrastructure on AWS. It includes basic configurations for modules, simple infrastructure, and an extended infrastructure.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) v0.12+
- [AWS CLI](https://aws.amazon.com/cli/) v2+
- [jq](https://stedolan.github.io/jq/) (optional, for JSON parsing)

## Repository Structure

```plaintext
module                                       # Root directory for the module
├── README.md                                # Documentation for the module
├── examples                                 # Directory for example usage of the module
│   ├── main.tf                              # Example main configuration file using the module
│   └── provider.tf                          # Example provider configuration file
├── main.tf                                  # Main configuration file for the module
└── variables.tf                             # Variable definitions for the module

```




## Terraform Commands

### Initialize the Terraform Workspace
Initialize the Terraform workspace by running the following command in the root directory of the repository:

```
terraform init
```

### Plan the Infrastructure
Review the changes Terraform will make to your infrastructure:

```
terraform plan
```

### Apply the Changes
Apply the changes to your infrastructure:

```
terraform apply --var-file config/dev.tfvars
```
### Destroy the Infrastructure
To destroy the infrastructure managed by Terraform:


```
terraform destroy config/dev.tfvars
```


Note: Replace `<region>`, `<environment>` and `<project_name>` with the appropriate values for your setup.
