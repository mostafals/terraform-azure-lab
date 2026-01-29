output "resource_group_name" {
  description = "Nom du Resource Group créé"
  value       = azurerm_resource_group.rg.name
}

output "vnet_name" {
  description = "Nom du Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_id" {
  description = "ID du subnet"
  value       = azurerm_subnet.subnet.id
}
