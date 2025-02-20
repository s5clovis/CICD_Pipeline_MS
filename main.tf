# main.tf

terraform {
  backend "remote" {
    organization = "Project_Clovis_Roger" # Your Terraform Cloud organization
    workspaces {
      name = "CICD_Pipeline_MS_Azure" # Your Terraform Cloud workspace
    }
  }
}

# Configure the Azure provider
provider "azurerm" {
  features {}
}