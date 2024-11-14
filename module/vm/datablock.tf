data "azurerm_network_interface" "example" {
  for_each = var.vms
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}

# data "azurerm_key_vault" "example" {
 
#   name                = "shashi-k"
#   resource_group_name = "forKeyvault-rg"
# }
# data "azurerm_key_vault_secret" "user" {
#   name         = "user"
#   key_vault_id = data.azurerm_key_vault.example.id
# }

# output "secret_value" {
#   value     = data.azurerm_key_vault_secret.example.value
#   sensitive = true
# }
# data "azurerm_key_vault_secret" "pass" {
#   name         = "pswd"
#   key_vault_id = data.azurerm_key_vault.example.id
# }

