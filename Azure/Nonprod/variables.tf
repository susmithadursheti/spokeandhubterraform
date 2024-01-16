variable "location" {
  description = "The name of the Azure location"
}

variable "clientsecret" {
  #store secrets in keyvault
  type = string
}

variable "clientid" {
  type = string
}

variable "tenantid" {
  type = string
}

variable "subscriptionid" {
  type = string
}

variable "parentgroup" {
  type = string
}

variable "role" {
  type = string
}

#variable "resource_group_name" {
#    type = string
#    validation {
#        condition = (length(var.resource_group_name) <= 90 && length(var.resource_group_name) > 2 && can(regex("[-\\w\\._\\(\\)]+", var.resource_group_name)) )
#        error_message = "Resource group name may only contain alphanumeric characters, dash, underscores, parentheses and periods."
#    }
#}

#variable "location" {
#  description ="The name of the Azure location"
#  default ="West Europe"
#  validation { # TF 0.13
#    condition = can(index(["westeurope","westus"], var.location) >= 0)
#    error_message = "The location must be westeurope or westus."
#  }
#}