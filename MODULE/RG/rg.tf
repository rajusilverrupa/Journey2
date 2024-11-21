resource "azurerm_resource_group" "rgblock" {
  for_each = var.rg
  name = each.key
  location = each.value
}