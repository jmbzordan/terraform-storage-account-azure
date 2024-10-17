#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
#Documentação para criação do resource group

#resource "nome do recurso no provider (imutável)" "nome do recurso para o código"
resource "azurerm_resource_group" "resource_group" {
  #Required
  name     = var.resource_group_name #Referência a variável resource_group_name
  location = var.location            #Referencia uma variável definida no arquivo variables.tf

  tags = local.common_tags #Referencia o local common_tags. local no singular é correto, 
}                          #pois referencia UM local dentro do bloco de declaração de localS


#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account
#Documentacao para criação da storage_account

#https://developer.hashicorp.com/terraform/language/expressions/references
#Documentação para referência de um atributo para um atributo de outro bloco

#resource "nome do recurso no provider (imutável)" "nome do recurso para o código"
resource "azurerm_storage_account" "storage_account" {
  #Required
  name                = var.storage_account_name    #Referência a variável storage_account_name 
  resource_group_name = azurerm_resource_group.resource_group     #Referencia o nome do resource criado 
                                                                  #anteriormente como nome do argumento atual
  location                 = var.location   #referencia a uma variavel definida no arquivo variables.tf
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags    #Referencia o local common_tags
}

#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container
#Documentação para criação do storage container

#resource "nome do recurso no provider (imutável)" "nome do recurso para o código"
resource "azurerm_storage_container" "container" {
  #Required
  name                 = var.container_name                         #Referência a variável container_name
  storage_account_name = azurerm_storage_account.storage_account    #Referencia o nome do resource criado anteriormente como nome do argumento atual
}