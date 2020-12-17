
data "aws_organizations_organization" "my_org" {}

resource "aws_organizations_organizational_unit" "core" {
  name      = "core"
  parent_id = aws_organizations_organization.my_org.roots[0].id
}

resource "aws_organizations_organizational_unit" "teams" {
  name      = "teams"
  parent_id = aws_organizations_organization.my_org.roots[0].id
}

resource "aws_organizations_organizational_unit" "network" {
  name      = "network"
  parent_id = aws_organizations_organization.my_org.roots[0].id
}

resource "aws_organizations_organizational_unit" "administration" {
  name      = "administration"
  parent_id = aws_organizations_organization.my_org.roots[0].id
}