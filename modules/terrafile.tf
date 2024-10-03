module "mgm" {
  source = "./mgm-create/mgm"
  mgm-name-parent  = "mg-dataops"
  child-name-mgm-001  = "mg-dataops-hmg"
  child-name-mgm-002  = "mg-dataops-prd"
}

output "name-parent-mgm" {
  value = module.mgm.name-parent-mgm
}

output "name-child-001-mgm" {
  value = module.mgm.name-child-001-mgm
}
output "name-child-002-mgm" {
  value = module.mgm.name-child-002-mgm
} 

###

module "mgm-mkt" {
  source = "./mgm-create/mgm"
  mgm-name-parent  = "mg-mkt"
  child-name-mgm-001  = "mg-mkt-hmg"
  child-name-mgm-002  = "mg-mkt-prd"
}

output "name-parent-mgm-mkt" {
  value = module.mgm-mkt.name-child-001-mgm-mkt
}

output "name-child-001-mgm-mkt" {
  value = module.mgm-mkt.name-child-001-mgm-mkt
}
output "name-child-002-mgm-mkt" {
  value = module.mgm-mkt.name-child-002-mgm-mkt
}

###

module "mgm-cybersec" {
  source = "./mgm-create/mgm"
  mgm-name-parent  = "mg-cybersec"
  child-name-mgm-001  = "mg-cybersec-hmg"
  child-name-mgm-002  = "mg-cybersec-prd"
}

output "name-parent-mgm-cybersec" {
  value = module.mgm-cybersec.name-parent-mgm
}

output "name-child-001-mgm-cybersec" {
  value = module.mgm-cybersec.name-child-001-mgm-cybersec
}
output "name-child-002-mgm-cybersec" {
  value = module.mgm-cybersec.name-child-002-mgm-cybersec
}