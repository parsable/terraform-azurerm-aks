data "azurerm_resource_group" "main" {
  name = var.resource_group_name
}

data "azurerm_virtual_network" "example" {
  name                = "vnet-analytics-westus2-001"
  resource_group_name = "rg-analyze-vnet-001"
}

output "virtual_network_id" {
  value = data.azurerm_virtual_network.example.subnets
}

//data "azurerm_subnet" "example" {
//  name                 = var.azurerm_subnet_name
//  virtual_network_name = var.azurerm_subnet_vnet_name
//  resource_group_name  = var.azurerm_subnet_rg_name
//}
//
//output "subnet_id" {
//  value = data.azurerm_subnet.example.id
//}