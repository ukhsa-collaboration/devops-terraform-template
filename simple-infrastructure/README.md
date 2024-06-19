# Simple Infrastructure

This directory contains a streamlined Terraform setup for managing and deploying a basic infrastructure. It includes configurations for a single application, with environment-specific variable files to facilitate development and production deployments. The structure is designed to be simple and easy to manage, making it ideal for smaller projects or initial setups.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) v0.12+
- [AWS CLI](https://aws.amazon.com/cli/) v2+
- [jq](https://stedolan.github.io/jq/) (optional, for JSON parsing)

## Directory Structure

```plaintext
simple-infrastructure                        # Root directory for the simple infrastructure setup
├── README.md                                # Documentation for the simple infrastructure setup
├── applications                             # Directory containing application-specific configurations
│   └── example-application-1                # Configuration for Example Application 1
│       ├── data.tf                          # Data sources used by the application
│       ├── locals.tf                        # Local values used by the application
│       ├── main.tf                          # Main configuration file for the application
│       ├── tfvars                           # Directory containing environment-specific variable files
│       │   ├── example-application-1-dev.tfvars  # Variables for the development environment
│       │   └── example-application-1-prod.tfvars # Variables for the production environment
│       ├── variables.tf                     # Variable definitions for the application
│       └── versions.tf                      # Terraform version and provider requirements
├── environment                              # Directory containing environment-specific variable files
│   ├── dev.tfvars                           # Variable definitions for the development environment
│   └── prod.tfvars                          # Variable definitions for the production environment
└── global.tfvars                            # Definitions for global variables used across the configurations

```

## Usage
### Initialize Terraform
Before running any Terraform commands, initialize the Terraform workspace:
```
terraform init
```
### Plan the Infrastructure
To see the changes Terraform will make to your infrastructure, use the plan command with the appropriate variable file for your environment:
```
terraform plan -var-file=environment/dev.tfvars
```
Replace dev.tfvars with prod.tfvars for the production environment.

### Apply the Changes
To apply the changes to your infrastructure:
```
terraform apply -var-file=environment/dev.tfvars
```
### Destroy the Infrastructure
To destroy the infrastructure managed by Terraform:
```
terraform destroy -var-file=environment/dev.tfvars
```
### Additional Information
#### Variables
`data.tf`: Data sources used by the application.
`locals.tf`: Local values used by the application.
`main.tf`: Main configuration file for the application.
`variables.tf`: Variable definitions for the application.
`versions.tf`: Terraform version and provider requirements.

####  Environment-Specific Variable Files
`tfvars/example-application-1-dev.tfvars`: Variables for the development environment.
`tfvars/example-application-1-prod.tfvars`: Variables for the production environment.
`environment/dev.tfvars`: Variable definitions for the development environment.
`environment/prod.tfvars`: Variable definitions for the production environment.
`global.tfvars`: Definitions for global variables used across the configurations.
