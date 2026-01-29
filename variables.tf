variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
  default     = "rg-terraformlab"
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
  default     = "vnet-terraformlab"
}

variable "vnet_address_space" {
  description = "VNET address space"
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
  default     = "subnet-app"
}

variable "subnet_address_prefixes" {
  description = "Subnet CIDR"
  type        = list(string)
  default     = ["10.10.1.0/24"]
}


# nsg 
variable "nsg_name" {
  description = "Network Security Group name"
  type        = string
  default     = "nsg-terraformlab"
}

variable "allowed_ssh_source" {
  description = "Allowed source IP for SSH"
  type        = string
  default     = "0.0.0.0/0"
}
# vm kinux

variable "vm_name" {
  type    = string
  default = "vm-terraformlabb"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type    = string
  default = "azureuserr"
  
}

variable "admin_password" {
  description = "Admin password for VM"
  type        = string
  sensitive   = true
}

