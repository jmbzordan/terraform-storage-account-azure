# terraform-aws-ec2
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/4.2.0/docs/resources/resource_group) | resource |
| [azurerm_storage_account.storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/4.2.0/docs/resources/storage_account) | resource |
| [azurerm_storage_container.container](https://registry.terraform.io/providers/hashicorp/azurerm/4.2.0/docs/resources/storage_container) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Tipo de replicação de dados da Storage Account referenciada no arquivo storage\_account.tf | `string` | `"LRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Tier da storage account (storage\_account) referenciada no arquivo storage\_account.tf | `string` | `"Standard"` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Nome do Container na Azure | `string` | `"container-terraform"` | no |
| <a name="input_location"></a> [location](#input\_location) | Região onde os recursos do arquivo storage\_account.tf serão criados | `string` | `"Brazil South"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Nome para o Resource Group na Azure | `string` | `"rg-curso-terraform"` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Nome da Storage Account na Azure | `string` | `"joaozordanterraform"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sa_primary_access_key"></a> [sa\_primary\_access\_key](#output\_sa\_primary\_access\_key) | Primary Access Key da Storage Account criada na Azure |
| <a name="output_storage_account_id"></a> [storage\_account\_id](#output\_storage\_account\_id) | ID da Storage Account criada na Azure |
<!-- END_TF_DOCS -->