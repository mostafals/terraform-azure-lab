variable "project_name" {
  description = "Nom du projet (utilisé dans les noms des ressources)"
  type        = string
  default     = "terraformlab"
}

variable "location" {
  description = "Région Azure"
  type        = string
  default     = "eastus"
}


# tags

variable "tags" {
  description = "Tags standards entreprise"
  type        = map(string)
  default = {
    project = "terraformlab"
    owner   = "team-infra"
  }
}

variable "vnet_cidr" {
  description = "CIDR du Virtual Network"
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR du Subnet"
  type        = string
  default     = "10.10.1.0/24"
}

variable "Subnet_mm" {
  description = "Subnet"
  type        = string
  default     = "subnet-default"
}

variable "Vnet_mm" {
  description = "Vnet"
  type        = string
  default     = "vnet"
}