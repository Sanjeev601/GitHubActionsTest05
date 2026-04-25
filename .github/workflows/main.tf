# 1. The Provider Block
terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }
  }
}

# 2. The Configuration Block
provider "azuread" {}

# 3. The Resource Block
resource "azuread_application" "my_app" {
  display_name = "MotherFucker001"
}