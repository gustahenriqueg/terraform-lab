variable "nameDefinitionPolicy" {
  description = "Name for definition policy"
  type = string
}

variable "effect" {
  description = "The effect of the policy."
  type        = string
  default     = "Deny"
}

variable "listofStartIpAddresses" {
  description = "List of Start IP Addresses for SQL."
  type        = list(string)
}

variable "listofEndIpAddresses" {
  description = "List of End IP Addresses for SQL."
  type        = list(string)
}

variable "managementGroupId" {
  description = "ID"
  type        = string
}

variable "policyDefinitionId" {
  description = "id definition"
  type = string
  
}

variable "policyEnforce" {
  description = "values: True or False"
  type = bool
}