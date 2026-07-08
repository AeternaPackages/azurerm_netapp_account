# --- azurerm_netapp_account ---
output "netapp_accounts" {
  description = "All netapp_account resources"
  value       = module.netapp_accounts.netapp_accounts
  sensitive   = true
}
output "netapp_accounts_active_directory" {
  description = "List of active_directory values across all netapp_accounts"
  value       = [for k, v in module.netapp_accounts.netapp_accounts : v.active_directory]
  sensitive   = true
}
output "netapp_accounts_identity" {
  description = "List of identity values across all netapp_accounts"
  value       = [for k, v in module.netapp_accounts.netapp_accounts : v.identity]
}
output "netapp_accounts_location" {
  description = "List of location values across all netapp_accounts"
  value       = [for k, v in module.netapp_accounts.netapp_accounts : v.location]
}
output "netapp_accounts_name" {
  description = "List of name values across all netapp_accounts"
  value       = [for k, v in module.netapp_accounts.netapp_accounts : v.name]
}
output "netapp_accounts_resource_group_name" {
  description = "List of resource_group_name values across all netapp_accounts"
  value       = [for k, v in module.netapp_accounts.netapp_accounts : v.resource_group_name]
}
output "netapp_accounts_tags" {
  description = "List of tags values across all netapp_accounts"
  value       = [for k, v in module.netapp_accounts.netapp_accounts : v.tags]
}


# --- azurerm_netapp_account_encryption ---
output "netapp_account_encryptions" {
  description = "All netapp_account_encryption resources"
  value       = module.netapp_account_encryptions.netapp_account_encryptions
}
output "netapp_account_encryptions_cross_tenant_key_vault_resource_id" {
  description = "List of cross_tenant_key_vault_resource_id values across all netapp_account_encryptions"
  value       = [for k, v in module.netapp_account_encryptions.netapp_account_encryptions : v.cross_tenant_key_vault_resource_id]
}
output "netapp_account_encryptions_encryption_key" {
  description = "List of encryption_key values across all netapp_account_encryptions"
  value       = [for k, v in module.netapp_account_encryptions.netapp_account_encryptions : v.encryption_key]
}
output "netapp_account_encryptions_federated_client_id" {
  description = "List of federated_client_id values across all netapp_account_encryptions"
  value       = [for k, v in module.netapp_account_encryptions.netapp_account_encryptions : v.federated_client_id]
}
output "netapp_account_encryptions_netapp_account_id" {
  description = "List of netapp_account_id values across all netapp_account_encryptions"
  value       = [for k, v in module.netapp_account_encryptions.netapp_account_encryptions : v.netapp_account_id]
}
output "netapp_account_encryptions_system_assigned_identity_principal_id" {
  description = "List of system_assigned_identity_principal_id values across all netapp_account_encryptions"
  value       = [for k, v in module.netapp_account_encryptions.netapp_account_encryptions : v.system_assigned_identity_principal_id]
}
output "netapp_account_encryptions_user_assigned_identity_id" {
  description = "List of user_assigned_identity_id values across all netapp_account_encryptions"
  value       = [for k, v in module.netapp_account_encryptions.netapp_account_encryptions : v.user_assigned_identity_id]
}



