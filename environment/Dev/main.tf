module "rg" {
  source = "../../modules/RG"
  rg     = var.rg
}
module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/vnet"
  vnet       = var.vnet

}
module "pip" {
  depends_on = [module.rg]
  source     = "../../modules/pip"
  pip        = var.pip
}
module "computing" {
  depends_on = [module.rg, module.vnet, ]
  source     = "../../modules/vm"
  nic        = var.nic
}
module "bastion" {
  depends_on = [module.rg, module.vnet, module.pip]
  source     = "../../modules/basation"
  bastion    = var.bastion
}
module "nsg" {
  depends_on = [module.rg]
  source     = "../../modules/nsg"
  nsg        = var.nsg
  
}
module "nsg_association" {
  depends_on = [module.nsg, module.vnet, module.rg]
  source     = "../../modules/nsgassociation"
  nsg_association = var.nsg_association
  
}