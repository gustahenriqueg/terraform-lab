module "sql_firewall_policy-mg-IA-hmg" {
  source = "./policy_sql_firewall" # Caminho para o módulo

  nameDefinitionPolicy   = "sqlFwRule-mg-IA-hmg"
  policyEnforce          = false
  effect                 = "Deny"
  listofEndIpAddresses   = ["0.0.0.0"]
  listofStartIpAddresses = ["255.255.255.255"]
  managementGroupId      = ""
  policyDefinitionId     = ""
}

module "sql_firewall_policy-mg-platform-hmg" {
  source = "./policy_sql_firewall" # Caminho para o módulo

  nameDefinitionPolicy   = "sqlFwRule-mg-ptm-hmg"
  policyEnforce          = false
  effect                 = "Deny"
  listofEndIpAddresses   = ["8.8.8.8"]
  listofStartIpAddresses = ["8.8.8.8"]
  managementGroupId      = ""
  policyDefinitionId     = ""
}

