variable "rg" {
  type = map(object({
    rg_name     = string
    rg_location = string
  }))
}
variable "vnet" {
  type = map(object({
    vnet_name     = string
    rg_name       = string
    rg_location   = string
    address_space = list(string)
    subnet = map(object({
      subnet_name      = string
      address_prefixes = list(string)
    }))
  }))
}
variable "pip" {
  type = map(object({
    pip_name          = string
    rg_name           = string
    rg_location       = string
    allocation_method = string
    sku               = string
  }))

}
variable "nic" {
  type = map(object({
    nic_name    = string
    rg_location = string
    rg_name     = string
    subnet_name = string
    vnet_name   = string
    ip_configuration = map(object({
      ip_config_name                = string
      private_ip_address_allocation = string
    }))

    vm_name = string
    vm_size = string

    source_image_reference = map(object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    }))
    os_disk = map(object({
      caching           = string
      managed_disk_type = string
    }))

  }))
}
variable "bastion" {
  type = map(object({
    bastion_name     = string
    bastion_location = string
    rg_name          = string
    vnet_name        = string
    subnet_name      = string
    public_ip_name   = string
    ip_configurations = map(object({
      ip_config_name = string
    }))
  }))
}
variable "nsg" {
  type = map(object({
    nsg_name            = string
    nsg_location        = string
    rg_name             = string
    security_rules      = map(object({
      name                          = string
      priority                      = number
      direction                     = string
      access                        = string
      protocol                      = string
      destination_port_range        = string
    }))
  }))
}
variable "nsg_association" {
  type = map(object({
subnet_name = string
vnet_name = string
nsg_name = string
rg_name = string
  }))
}