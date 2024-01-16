#data "azurerm_billing_enrollment_account_scope" "example" {
#  billing_account_name    = "dursheti.susmitha@outlook.com"
#  enrollment_account_name = "dursheti.susmitha@outlook.com"
#}

#resource "azurerm_subscription" "example" {
#  subscription_name = "spokedev"
#  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.example.id
#}