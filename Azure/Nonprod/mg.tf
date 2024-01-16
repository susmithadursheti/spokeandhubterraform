data "azurerm_client_config" "example" {
}

data "azurerm_subscription" "current" {
}

resource "azurerm_role_assignment" "mg_creator" {
  scope                = var.parentgroup                              # Scope - Management Group where assignment applies (parent group)
  principal_id         = data.azurerm_client_config.example.object_id # Principal ID - User or service principal accessing permissions
  role_definition_name = var.role                                     # Role Definition ID - Management Group Contributor
}

resource "azurerm_management_group" "managementgroup" {
  name                       = join("-", compact(["spokehub", "pmg"]))
  display_name               = join("-", compact(["spokehub", "pmg"]))
  parent_management_group_id = var.parentgroup
  subscription_ids = [
    data.azurerm_subscription.current.subscription_id,
  ]
}





#resource "azurerm_role_assignment" "mg_creator2" {
# Scope - Management Group where assignment applies (parent group)
#  scope = "/providers/Microsoft.Management/managementGroups/scopehub"

# Principal ID - User or service principal accessing permissions
#  principal_id = data.azurerm_client_config.example.object_id

# Role Definition ID - Management Group Contributor
#  role_definition_name = "User Access Administrator"
#}

# Create a user-assigned managed identity (optional)
#resource "azurerm_user_assigned_identity" "spoke_identity" {
#  for_each            = local.environments
#  name                = "spoke-user-assigned-identity-${each.key}"
#  resource_group_name = azurerm_resource_group.network_rg[each.key].name
#  location            = var.location
#}

#resource "azurerm_management_group" "managementgroup" {
#  display_name               = "spokehubmgdev"
#  name                       = "spokehubmgdev"
#  parent_management_group_id = "/providers/Microsoft.Management/managementGroups/92e5fa0e-7b2e-48f7-8989-1c6b0ff79b65"
#}

#resource "azurerm_role_assignment" "management_group_owner" {
#  for_each             = local.environments
#  scope                = data.azurerm_subscription.primary.id         # Scope - Management Group ID
#  principal_id         = data.azurerm_client_config.example.object_id # Principal ID - Managed Identity
#  role_definition_name = "Owner"                            # Role Definition ID - Owner
#}
