resource "azurerm_management_group" "mgm-parent" {
    display_name = var.mgm-name-parent
}

resource "azurerm_management_group" "child-mgm-001" {
  display_name = var.child-name-mgm-001
  parent_management_group_id = azurerm_management_group.mgm-parent.id
}

resource "azurerm_management_group" "child-mgm-002" {
  display_name = var.child-name-mgm-002
  parent_management_group_id = azurerm_management_group.mgm-parent.id
}

/*
resource "azurerm_management_group" "child-mkt-prd" {
  display_name = "Contoso mkt-prd"
      subscription_ids = [
        "29880d47-8610-406e-86dd-e3c3008e45a3"
    ]
  parent_management_group_id = azurerm_management_group.mgm-blip.id
}

resource "azurerm_management_group" "mgm-financeiro" {
    display_name = "Contoso financeiro"
}

resource "azurerm_management_group" "child-financeiro-hmg" {
  display_name = "financeiro-hmg"
  parent_management_group_id = azurerm_management_group.mgm-financeiro.id
}

resource "azurerm_management_group" "child-financeiro-prd" {
  display_name = "financeiro-prd"
  parent_management_group_id = azurerm_management_group.mgm-financeiro.id
}
*/