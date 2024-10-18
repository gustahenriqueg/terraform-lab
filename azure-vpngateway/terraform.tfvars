rg-name = "rg-azdc-tf"
location = "east us"

tags_mandatorys = {
    environment         = "tst"
    ccid                = "99999999999999999999"
    ccname              = "operation"
    owner               = "management_operation"
    classification      = "internal"
    ticketid            = "00000"
    teamname            = "opsteam"
    criticality         = "medium"
    systemname          = "vpn-test"
}

vnet-name = "dmz-dc-azure"
vnet-gsubnet = "GatewaySubnet"

pip-vng = "pip-virtualnetworkgateway"
vng-name = "meu-vng"
vng-sku = "VpnGw1"
vng-ip = "vng-ipconfig"

lng-name = "lng-azure"
lng-g_adress = "" # Ip do primeiro virtual private gateway AWS (tunne1). 

lng02-name = "lng-azure-standyby"
lng02-g_adress = "" # Ip do primeiro virtual private gateway AWS (tunne2).

lng-conn01 = "conn-1"
conn01-skey = "" # pre-shared key

lng-conn02 = "conn-2"
conn02-skey = "" # pre-shared key
