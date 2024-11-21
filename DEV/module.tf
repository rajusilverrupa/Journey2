module "rgmodule" {
  source = "../MODULE/RG"
  rg = var.rgmodule
}

module "samodule" {
  depends_on = [module.rgmodule]
  source = "../MODULE/SA"
  storagevar = var.storageaccount
}
module "container1" {
    depends_on = [module.samodule]
  source = "../MODULE/CA"
  contstg = var.container1
}
module "VNET" {
  depends_on = [module.rgmodule]
  source = "../MODULE/Vnet"
  virtualnet = var.virtnetw
}