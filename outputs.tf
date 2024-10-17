#https://developer.hashicorp.com/terraform/language/values/outputs
#Documentação de referencia do bloco Output

output "storage_account_id" {
  description = "ID da Storage Account criada na Azure"
  value       = azurerm_storage_account.storage_account     #Referencia o nome do resource declarado no arquivo de resources storage_account.tf
}


output "sa_primary_access_key" {
  description = "Primary Access Key da Storage Account criada na Azure"
  value       = azurerm_storage_account.storage_account.primary_access_key #Referencia um atributo do resource aruzerm_storage_account
                                                                           #a lista de atributos do resource está na DOC do resource
  sensitive = true    #Define informação sensível e que não será exposta no "terraform plan"                      
}