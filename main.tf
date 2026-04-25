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
resource "azuread_user" "my_user" {
  user_principal_name = "ankitapriya@sanjeevkumar00045gmail.onmicrosoft.com"
  display_name        = "AnkitaPriya"
  password            = "SecretPassword123!"
}