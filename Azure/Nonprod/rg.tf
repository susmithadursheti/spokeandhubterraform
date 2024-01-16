resource "azurerm_resource_group" "network_rg" {
  for_each = local.environments
  name     = join("-", compact(["zsc", each.key, "network", "rg"]))
  #  name        = format("zsc-%s-network-rg", each.key)
  location = var.location
  tags = {
    created-by = "terraform"
    prod       = "false"
  }
}

resource "azurerm_resource_group" "security_rg" {
  for_each = local.environments
  name     = join("-", compact(["zsc", each.key, "security", "rg"]))
  #  name        = format("zsc-%s-network-rg", each.key)
  location = var.location
  tags = {
    created-by = "terraform"
    prod       = "false"
  }
}
