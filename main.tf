terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
  #Documentação para referência de argumentos obrigatórios e opcionais

  features {

    #exemplo de feature
    /* resource_group {
      prevent_deletion_if_contains_resources = false
    } */

  }
}