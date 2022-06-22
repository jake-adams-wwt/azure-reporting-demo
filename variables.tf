# variable "business_units" {
#   type        = list(string)
#   description = "List of business unit names for the organization"
# }

variable "primary_location" {
  type        = string
  description = "Primary Azure Region"
}

variable "environment" {
  type = string
}

variable "owner" {
  type = string
}

variable "business_unit" {
  type = string
}

variable "system_name" {
  type = string
}

# variable "secondary_location" {
#   type        = string
#   description = "Secondary Azure Region"
# }

variable "management_group_name" {
  type = string
}

variable "management_group_display_name" {
  type = string
}

variable "deployment_mechanism" {
  type = string
}


variable "purview_location" {
  type        = string
  description = "Purview Azure Region"
}



variable "tags" {
  type = map(any)

  default = {
    Environment = "Production"
    Dept        = "Engineering"
    Billing     = "<Billing code>"
    Product     = "Azure ExpressRoute"
  }
}
