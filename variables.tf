#https://developer.hashicorp.com/terraform/language/values/variables

#Documentação para criação do bloco variables
#cada bloco Variable declara apenas UMA variável
variable "location" {
  description = "Região onde os recursos do arquivo storage_account.tf serão criados"

  #https://learn.microsoft.com/en-us/azure/reliability/availability-zones-service-support
  #Documentacao com as regiões disponíveis da Azure

  type    = string
  default = "Brazil South"

  #exemplos de declaracao de variavel
  #type = string
  #type = list(string)
  #type = list(number)
  #type = number
  #type = bool
}

variable "account_tier" {
  description = "Tier da storage account (storage_account) referenciada no arquivo storage_account.tf"
  type        = string

  #Verificar na documentação de storage_account as opções disponíveis
  default = "Standard"

}


variable "account_replication_type" {
  description = "Tipo de replicação de dados da Storage Account referenciada no arquivo storage_account.tf"
  type        = string

  #Verificar na documentação de storage_account as opções disponíveis
  default = "LRS"
}


variable "resource_group_name" {
  description = "Nome para o Resource Group na Azure"
  type        = string

  default = "rg-curso-terraform"
}


variable "storage_account_name" {
  description = "Nome da Storage Account na Azure"
  type        = string

  default = "joaozordanterraform"
}


variable "container_name" {
  description = "Nome do Container na Azure"
  type        = string

  default = "container-terraform"
}