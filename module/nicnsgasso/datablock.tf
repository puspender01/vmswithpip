data "azurerm_network_interface" "example" {
  for_each = var.nicnsg
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_network_security_group" "example" {
  for_each = var.nicnsg
  name                = each.value.nsg_name
  resource_group_name = each.value.resource_group_name

# output "subnet_id" {
#   value = data.azurerm_subnet.example.id
}