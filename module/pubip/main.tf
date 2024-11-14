resource "azurerm_public_ip" "example" {
  for_each            = var.pip
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
