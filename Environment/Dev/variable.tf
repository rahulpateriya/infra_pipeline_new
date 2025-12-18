variable "rg" {
  description = "A map of resource groups to create."
  type = map(object({
    name_rg  = string
    location = string
  }))
}



variable "sa" {
  description = "A map of storage accounts to create."
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "vnet" {
  description = "values for the virtual network"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
}

variable "snet" {
  description = "A map of subnets to create."
  type = map(object({
    name                 = string
    virtual_network_name = string
    resource_group_name  = string
    address_prefixes     = list(string)
    # service_endpoints    = optional(list(string), [])
    # delegation           = optional(object({
    # name = string
    # service_delegation_name = string
    # }), null)
    # enforce_private_link_endpoint_network_policies = optional(bool, false)
  }))

}

variable "pip" {
  description = "A map of public IPs to create."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = optional(string, "Dynamic")
    sku                 = optional(string, "Basic")
  }))
}

variable "nsg" {
}
variable "vm" {

}
variable "nic" {

}
variable "kv" {

}
variable "kvsu" {

}
variable "kvsp" {

}
variable "nsg-nic-assoc" {

}
