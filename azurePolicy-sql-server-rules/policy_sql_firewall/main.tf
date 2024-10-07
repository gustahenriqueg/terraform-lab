resource "azurerm_management_group_policy_assignment" "sql_firewall_policy_assignment" {
  name                 = var.nameDefinitionPolicy
  policy_definition_id = var.policyDefinitionId
  management_group_id  = var.managementGroupId
  enforce              = var.policyEnforce 

  parameters = jsonencode({
    effect = {
      value = "${var.effect}"
    },
    listOfStartIpAddresses = {
      value = "${var.listofStartIpAddresses}"
    },
    listOfEndIpAddresses = {
      value = "${var.listofEndIpAddresses}"
    }
  })
}
