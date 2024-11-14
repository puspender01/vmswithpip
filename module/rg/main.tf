resource "azurerm_resource_group" "name" {
  for_each = var.rgs
  name =   each.value.resource_group_name
  location= each.value.location 
}