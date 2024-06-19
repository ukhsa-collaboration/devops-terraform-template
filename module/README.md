# Basic Terraform Config Repository

This repository contains Terraform configurations for managing infrastructure on AWS. It includes basic configurations for modules, simple infrastructure, and an extended infrastructure.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) v0.12+
- [AWS CLI](https://aws.amazon.com/cli/) v2+
- [jq](https://stedolan.github.io/jq/) (optional, for JSON parsing)

## Repository Structure

```plaintext
.
├── README.md                               # Project documentation
├── extended-infrastructure                 # Directory for extended infrastructure examples
│   ├── applications                        # Directory for application configurations
│   │   ├── example-application-1           # Configuration for Example Application 1
│   │   │   ├── data.tf                     # Data sources used by the application
│   │   │   ├── locals.tf                   # Local values used by the application
│   │   │   ├── main.tf                     # Main configuration file
│   │   │   ├── tfvars                      # Directory for environment-specific variable files
│   │   │   │   ├── example-application-1-dev.tfvars   # Variables for the development environment
│   │   │   │   └── example-application-1-test.tfvars  # Variables for the test environment
│   │   │   ├── variables.tf                # Variable definitions
│   │   │   └── versions.tf                 # Terraform version and provider requirements
│   │   └── example-application-2           # Configuration for Example Application 2
│   │       ├── data.tf                     # Data sources used by the application
│   │       ├── locals.tf                   # Local values used by the application
│   │       ├── main.tf                     # Main configuration file
│   │       ├── tfvars                      # Directory for environment-specific variable files
│   │       │   ├── example-application-2-dev.tfvars   # Variables for the development environment
│   │       │   ├── example-application-2-prod.tfvars  # Variables for the production environment
│   │       │   └── example-application-2-test.tfvars  # Variables for the test environment
│   │       ├── variables.tf                # Variable definitions
│   │       └── versions.tf                 # Terraform version and provider requirements
│   ├── core-services                       # Directory for core service configurations
│   │   ├── example-service-1               # Configuration for Example Service 1
│   │   │   ├── data.tf                     # Data sources used by the service
│   │   │   ├── locals.tf                   # Local values used by the service
│   │   │   ├── main.tf                     # Main configuration file
│   │   │   ├── tfvars                      # Directory for environment-specific variable files
│   │   │   │   ├── example-service-1-dev.tfvars   # Variables for the development environment
│   │   │   │   ├── example-service-1-prod.tfvars  # Variables for the production environment
│   │   │   │   └── example-service-1-test.tfvars  # Variables for the test environment
│   │   │   ├── variables.tf                # Variable definitions
│   │   │   └── versions.tf                 # Terraform version and provider requirements
│   │   └── example-service-2               # Configuration for Example Service 2
│   │       ├── data.tf                     # Data sources used by the service
│   │       ├── locals.tf                   # Local values used by the service
│   │       ├── main.tf                     # Main configuration file
│   │       ├── tfvars                      # Directory for environment-specific variable files
│   │       │   ├── example-service-2-dev.tfvars   # Variables for the development environment
│   │       │   ├── example-service-2-prod.tfvars  # Variables for the production environment
│   │       │   └── example-service-2-test.tfvars  # Variables for the test environment
│   │       ├── variables.tf                # Variable definitions
│   │       └── versions.tf                 # Terraform version and provider requirements
│   ├── environment                         # Directory for environment-specific configurations
│   │   ├── dev.tfvars                      # Variables for the development environment
│   │   ├── prod.tfvars                     # Variables for the production environment
│   │   └── test.tfvars                     # Variables for the test environment
│   └── global.tfvars                       # Global variable definitions
├── module                                  # Directory for reusable modules
│   ├── README.md                           # Module documentation
│   ├── examples                            # Examples for using the module
│   │   ├── main.tf                         # Example main configuration
│   │   └── provider.tf                     # Example provider configuration
│   ├── main.tf                             # Main module configuration
│   └── variables.tf                        # Module variable definitions
└── simple-infrastructure                   # Directory for simple infrastructure examples
    ├── applications                        # Directory for application configurations
    │   └── example-application-1           # Configuration for Example Application 1
    │       ├── data.tf                     # Data sources used by the application
    │       ├── locals.tf                   # Local values used by the application
    │       ├── main.tf                     # Main configuration file
    │       ├── tfvars                      # Directory for environment-specific variable files
    │       │   ├── example-application-1-dev.tfvars   # Variables for the development environment
    │       │   └── example-application-1-prod.tfvars  # Variables for the production environment
    │       ├── variables.tf                # Variable definitions
    │       └── versions.tf                 # Terraform version and provider requirements
    ├── environment                         # Directory for environment-specific configurations
    │   ├── dev.tfvars                      # Variables for the development environment
    │   └── prod.tfvars                     # Variables for the production environment
    └── global.tfvars                       # Global variable definitions


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
