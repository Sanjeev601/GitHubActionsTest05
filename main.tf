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
# 1. Look up the existing Group
data "azuread_group" "target_group" {
  display_name     = "KingsKnights"
  security_enabled = true
}

# 2. Look up the existing User
data "azuread_user" "target_user" {
  user_principal_name = "ankitapriya@sanjeevkumar00045gmail.onmicrosoft.com"
}

# 3. Add the User to the Group
resource "azuread_group_member" "example" {
  group_object_id  = data.azuread_group.target_group.id
  member_object_id = data.azuread_user.target_user.id
}