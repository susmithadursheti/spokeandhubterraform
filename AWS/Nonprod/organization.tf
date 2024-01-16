#resource "aws_organizations_organization" "organization" {
#  feature_set                   = var.feature_set
#  aws_service_access_principals = var.aws_service_access_principals
#  enabled_policy_types          = var.enabled_policy_types
#}

resource "aws_organizations_organization" "org" {
  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
  ]

  feature_set = "ALL"

  enabled_policy_types = [
    "TAG_POLICY",
    "SERVICE_CONTROL_POLICY"
  ]
}