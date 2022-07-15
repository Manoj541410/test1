terraform {
 required_version = ">= 0.13.6"
}

resource "null_resource" "tags" {
  triggers = {
    "Name"            = var.Name
  }
}
