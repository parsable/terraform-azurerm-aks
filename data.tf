data "azurerm_client_config" "default" {}

data "azurerm_private_dns_zone" "default" {
  name                = var.private_dns_zone_name
  resource_group_name = var.private_dns_zone_rg_name
}

data "azurerm_resource_group" "main" {
  name = var.resource_group_name
}

data "azurerm_virtual_network" "default" {
  name                = var.vnet_name
  resource_group_name = var.vnet_rg_name
}

data "azurerm_user_assigned_identity" "default" {
  name                = var.user_assigned_identity_name
  resource_group_name = var.resource_group_name

  depends_on = [azurerm_user_assigned_identity.default]
}

data "azurerm_subnet" "default" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.vnet_rg_name
}