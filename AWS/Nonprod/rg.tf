resource "aws_resourcegroups_group" "example" {
  for_each = local.environments
  name     = join("-", compact(["zsc", each.key, "network", "rg"]))

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::EC2::Instance"
  ],
  "TagFilters": [
    {
      "Key": "Nonprod",
      "Values": ["Dev"]
    }
  ]
}
JSON
  }
}