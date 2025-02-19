# main.tf

terraform {
  backend "remote" {
    organization = "Project_Clovis_Roger"
    workspaces {
      name = "CICD_Pipeline_MS_Azure"
    }
  }
}