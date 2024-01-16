resource "aws_organizations_account" "account" {
  name      = var.accountname
  email     = var.email
  parent_id = aws_organizations_organizational_unit.example.id
}