variable "netapp_accounts" {
  description = <<EOT
Map of netapp_accounts, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - tags
    - active_directory (block)
    - identity (block)
Nested netapp_account_encryptions (azurerm_netapp_account_encryption):
    Required:
        - encryption_key
    Optional:
        - cross_tenant_key_vault_resource_id
        - federated_client_id
        - system_assigned_identity_principal_id
        - user_assigned_identity_id
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    tags                = optional(map(string))
    active_directory = optional(object({
      aes_encryption_enabled            = optional(bool)
      dns_servers                       = list(string)
      domain                            = string
      kerberos_ad_name                  = optional(string)
      kerberos_kdc_ip                   = optional(string)
      ldap_over_tls_enabled             = optional(bool)
      ldap_signing_enabled              = optional(bool)
      local_nfs_users_with_ldap_allowed = optional(bool)
      organizational_unit               = optional(string)
      password                          = string
      server_root_ca_certificate        = optional(string)
      site_name                         = optional(string)
      smb_server_name                   = string
      username                          = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    netapp_account_encryptions = optional(map(object({
      encryption_key                        = string
      cross_tenant_key_vault_resource_id    = optional(string)
      federated_client_id                   = optional(string)
      system_assigned_identity_principal_id = optional(string)
      user_assigned_identity_id             = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.netapp_accounts) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.netapp_accounts : [for kk in keys(coalesce(v0.netapp_account_encryptions, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
