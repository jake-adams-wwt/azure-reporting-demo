variable "business_units" {
  type        = list(string)
  description = "List of business unit names for the organization"
}

variable "primary_location" {
  type        = string
  description = "Primary Azure Region"
}

variable "secondary_location" {
  type        = string
  description = "Secondary Azure Region"
}

variable "management_group_name" {
  type = string
}

variable "management_group_display_name" {
  type = string
}

# variable "deployment_mechanism" {
#   type = string
# }







variable "location_scus" {
  description = "S. Central Region"
}

variable "rghub" {
  description = "Hub Resource Group"
}

variable "er_scus_hubvnetname" {
  description = "S. Central Hub VNET Name"
}

variable "er1_scus_da11_name" {
  description = "ExpressRoute 1 (S. Central) Dallas - Name"
}

variable "er2_scus_ch3_name" {
  description = "ExpressRoute 2 (S. Central) Chicago - Name"
}

variable "er_provider" {
  description = "ER - Provider"
}

variable "scus_er_location" {
  description = "Dallas ER - location"
}

variable "bw" {
  description = "ER Circuit Bandwidth"
}

variable "er_sku_tier" {
  description = "ER Circuit SKU Tier"
}

variable "er_sku_family" {
  description = "ER Circuit SKU Family"
}

variable "er_peeringtype" {
  description = "ER Circuit Peering Type"
}

variable "er_scus_asn" {
  description = "S. Central ER ASN"
}

variable "er1_scus_da11_subnetpri" {
  description = "ER1 Dallas to SCUS (DCI02) primary peering subnet"
}

variable "er1_scus_da11_subnetsec" {
  description = "ER1 Dallas to SCUS (DCI02) secondary peering subnet"
}

variable "er2_scus_ch3_subnetpri" {
  description = "ER2 Chicago to SCUS (DCI02) primary peering subnet"
}

variable "er2_scus_ch3_subnetsec" {
  description = "ER2 Chicago to SCUS (DCI02) secondary peering subnet"
}

variable "er_scus_vlan" {
  description = "ER S. Central VLAN ID"
}

variable "er_scus_ergw1" {
  description = "S. Central Hub ExpressRoute Gateway 1 - Name"
}

variable "er_scus_ergw1_pip" {
  description = "S. Central Hub ExpressRoute Gateway 1 - Public IP"
}

variable "er_scus_ergw1_ipconfig" {
  description = "S. Central Hub ExpressRoute Gateway 1 - IP Config Name"
}

variable "er1_scus_da11_conn_name" {
  description = "S. Central Hub ExpressRoute Circuit 1 (Dallas) - Connection Name"
}

variable "er2_scus_ch3_conn_name" {
  description = "S. Central Hub ExpressRoute 2 (Chicago) Circuit - Connection Name"
}

#variable "sub1" {
#    description  = "Hub Subcription ID"
#}

variable "tags" {
  type = map(any)

  default = {
    Environment = "Production"
    Dept        = "Engineering"
    Billing     = "<Billing code>"
    Product     = "Azure ExpressRoute"
  }
}
