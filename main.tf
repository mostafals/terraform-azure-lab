# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.project_name}"
  location = var.location
  tags     = var.tags
}

# Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name = "${var.Vnet_mm}-${var.project_name}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space   = [var.vnet_cidr]
  tags     = var.tags
}

# Subnet
resource "azurerm_subnet" "subnet" {
  name                 = var.Subnet_mm
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = [var.subnet_cidr]
}

