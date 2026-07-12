locals {
  netapp_accounts = { for k1, v1 in var.netapp_accounts : k1 => { active_directory = v1.active_directory, identity = v1.identity, location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  netapp_account_encryptions = merge([
    for k1, v1 in var.netapp_accounts : {
      for k2, v2 in coalesce(v1.netapp_account_encryptions, {}) :
      "${k1}/${k2}" => merge(v2, {
        netapp_account_id = module.netapp_accounts.netapp_accounts_id["${k1}"]
      })
    }
  ]...)
}

module "netapp_accounts" {
  source          = "git::https://github.com/AeternaModules/azurerm_netapp_account.git?ref=v4.80.0"
  netapp_accounts = local.netapp_accounts
}

module "netapp_account_encryptions" {
  source                     = "git::https://github.com/AeternaModules/azurerm_netapp_account_encryption.git?ref=v4.80.0"
  netapp_account_encryptions = local.netapp_account_encryptions
  depends_on                 = [module.netapp_accounts]
}

