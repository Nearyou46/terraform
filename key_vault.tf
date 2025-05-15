
# # Create Azure Key Vault
 data "azurerm_client_config" "current" {}
 resource "azurerm_key_vault" "test-key-vault" {
   name                        = "test-key-vault"
   resource_group_name         = azurerm_resource_group.my-resourcegroup.name
   location                    = azurerm_resource_group.my-resourcegroup.location
   tenant_id                   = data.azurerm_client_config.current.tenant_id
   sku_name                    = "standard"
   enable_rbac_authorization   = true
   enabled_for_deployment      = true
 }

# # Add a secret to Key Vault
# resource "azurerm_key_vault_secret" "example_secret" {
#   name         = "example-secret"
#   value        = "super-secret-value"
#   key_vault_id = azurerm_key_vault.test-key-vault.id
# }



# # Required data source to get current Azure tenant ID
# data "azurerm_client_config" "current" {}
