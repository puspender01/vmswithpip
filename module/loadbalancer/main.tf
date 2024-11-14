resource "azurerm_lb" "example" {
  for_each = var.loadbalancer
  name                = each.value.lb_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = data.azurerm_public_ip.example.id
  }
}
resource "azurerm_lb_backend_address_pool" "example" {
  loadbalancer_id = azurerm_lb.example.id
  name            = "BackEndAddressPool"
}

resource "azurerm_lb_backend_address_pool_address" "example" {
  name                    = "example"
  backend_address_pool_id = azurerm_lb_backend_address_pool.example.id
  virtual_network_id      = data.azurerm_virtual_network.example.id
  ip_address              = "10.0.0.2"
}
resource "azurerm_lb_backend_address_pool_address" "example-1" {
  name                    = "example"
  backend_address_pool_id = azurerm_lb_backend_address_pool.example.id
  virtual_network_id      = data.azurerm_virtual_network.example.id
  ip_address              = "10.0.0.2"
}