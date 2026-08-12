# Github_120826# Azure Infrastructure Provisioning using Terraform and GitHub Actions

This project provisions Azure infrastructure using Terraform and automates the deployment through GitHub Actions CI/CD.

## Architecture

The Terraform code creates the following Azure resources:

- Azure Resource Groups
  - dev-rg
  - dev-rg-2
- Azure Virtual Network
  - dev-vnet1
- Azure Subnet
  - frontend-dev-subnet

## Project Structure

```text
Github_120826/
│
├── .github/
│   └── workflows/
│       └── terraform-cicd.yml
│
├── main.tf
├── provider.tf
├── terraform.tfvars
├── variable.tf
│
├── module/
│   ├── azurerm_resource_group/
│   │   └── main.tf
│   │
│   ├── azurerm_virtual_network/
│   │   └── main.tf
│   │
│   └── azurerm_group_subnet/
│       └── main.tf
│
├── .gitignore
└── README.md