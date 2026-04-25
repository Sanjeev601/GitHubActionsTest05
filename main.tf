# 1. Search for the Group by its name
data "azuread_group" "target_group" {
  display_name     = "KingsKnights"
  security_enabled = true
}

# 2. Get the list of Member IDs from that group
data "azuread_group_members" "all_members" {
  group_object_id = data.azuread_group.target_group.id
}

# 3. Look up the User details for those specific IDs
data "azuread_users" "member_details" {
  object_ids = data.azuread_group_members.all_members.members
}

# 4. Display the names in the console
output "group_member_names" {
  description = "The display names of the members in KingsKnights"
  value       = data.azuread_users.member_details.display_names
}