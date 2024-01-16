resource "aws_organizations_organizational_unit" "example" {
  name      = var.organizationalunit
  parent_id = "r-grpe"
}