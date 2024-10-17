#https://developer.hashicorp.com/terraform/language/values/locals
#Documentação para bloco Locals do Terraform

#declaração tanto de variáveis como "funções", ou trecho de códigos, comumente utilizados. Ambos serão chamados de "local"
locals {

  #Ao contrário da AWS, a AZURE não possibilita a declaração de tags default diretamente no bloco provider (vide exemplo do bloco provider
  #no terraform de criação do bucket AWS). Logo, podemos criar um local que será utilizado como lista de tags para os resources
  common_tags = {
    owner      = "joaozordan"
    managed-by = "terraform"
  }

  #Caso seja desejado, pode-se seguir criando mais funções no bloco. Ex:
  /* nome = {
  } */
}