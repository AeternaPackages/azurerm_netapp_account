# --- azurerm_netapp_account ---
output "netapp_accounts_active_directory" {
  description = "Map of active_directory values across all netapp_accounts, keyed the same as var.netapp_accounts"
  value       = module.netapp_accounts.netapp_accounts_active_directory
  sensitive   = true
}

output "netapp_accounts_identity" {
  description = "Map of identity values across all netapp_accounts, keyed the same as var.netapp_accounts"
  value       = module.netapp_accounts.netapp_accounts_identity
}

output "netapp_accounts_location" {
  description = "Map of location values across all netapp_accounts, keyed the same as var.netapp_accounts"
  value       = module.netapp_accounts.netapp_accounts_location
}

output "netapp_accounts_name" {
  description = "Map of name values across all netapp_accounts, keyed the same as var.netapp_accounts"
  value       = module.netapp_accounts.netapp_accounts_name
}

output "netapp_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all netapp_accounts, keyed the same as var.netapp_accounts"
  value       = module.netapp_accounts.netapp_accounts_resource_group_name
}

output "netapp_accounts_tags" {
  description = "Map of tags values across all netapp_accounts, keyed the same as var.netapp_accounts"
  value       = module.netapp_accounts.netapp_accounts_tags
}

# --- azurerm_netapp_account_encryption ---
output "netapp_account_encryptions_cross_tenant_key_vault_resource_id" {
  description = "Map of cross_tenant_key_vault_resource_id values across all netapp_account_encryptions, keyed the same as var.netapp_account_encryptions"
  value       = module.netapp_account_encryptions.netapp_account_encryptions_cross_tenant_key_vault_resource_id
}

output "netapp_account_encryptions_encryption_key" {
  description = "Map of encryption_key values across all netapp_account_encryptions, keyed the same as var.netapp_account_encryptions"
  value       = module.netapp_account_encryptions.netapp_account_encryptions_encryption_key
}

output "netapp_account_encryptions_federated_client_id" {
  description = "Map of federated_client_id values across all netapp_account_encryptions, keyed the same as var.netapp_account_encryptions"
  value       = module.netapp_account_encryptions.netapp_account_encryptions_federated_client_id
}

output "netapp_account_encryptions_netapp_account_id" {
  description = "Map of netapp_account_id values across all netapp_account_encryptions, keyed the same as var.netapp_account_encryptions"
  value       = module.netapp_account_encryptions.netapp_account_encryptions_netapp_account_id
}

output "netapp_account_encryptions_system_assigned_identity_principal_id" {
  description = "Map of system_assigned_identity_principal_id values across all netapp_account_encryptions, keyed the same as var.netapp_account_encryptions"
  value       = module.netapp_account_encryptions.netapp_account_encryptions_system_assigned_identity_principal_id
}

output "netapp_account_encryptions_user_assigned_identity_id" {
  description = "Map of user_assigned_identity_id values across all netapp_account_encryptions, keyed the same as var.netapp_account_encryptions"
  value       = module.netapp_account_encryptions.netapp_account_encryptions_user_assigned_identity_id
}


