business_units = [
  "Accounting/Finance",
  "Accounts Payable",
  "Ag lending",
  "Appraisals",
  "Compliance/Risk",
  "Commercial lending",
  "Consumer lending",
  "Credit Admin",
  "Deposit Ops",
  "Digital Payments",
  "Facilities",
  "FLPD",
  "HR",
  "Info Sec",
  "IT",
  "Items Processing",
  "Marketing",
  "Mortgage",
  "New Accounts",
  "Private banking/Trust",
  "Real Estate",
  "Teller Management",
  "Treasury Mgmt/Digital Banking",
  "Windmark"
]

primary_location     = "SouthCentralUS"
secondary_location   = "NorthCentralUS"
deployment_mechanism = "Terraform"

management_group_name         = "adamsjac-test-group2"
management_group_display_name = "Jake Adams Test Management Group"




location_scus           = "southcentralus"
rghub                   = "<South Central RG>"
er1_scus_da11_name      = "ER1_scus_dallas"
er2_scus_ch3_name       = "ER2_scus_chicago"
er_provider             = "Equinix"
scus_er_location        = "Dallas"
bw                      = "1000"
er_sku_tier             = "Standard"
er_sku_family           = "MeteredData"
er_peeringtype          = "AzurePrivatePeering"
er_scus_asn             = "<BGP Private ASN #>"
er1_scus_da11_subnetpri = "10.255.208.140/30"
er1_scus_da11_subnetsec = "10.255.208.148/30"
er2_scus_ch3_subnetpri  = "10.255.192.140/30"
er2_scus_ch3_subnetsec  = "10.255.192.148/30"
er_scus_vlan            = "<VLAN ID for Private Peering>"
er_scus_hubvnetname     = "<South Central VNET>"
er_scus_ergw1           = "scus-ergw1"
er_scus_ergw1_pip       = "scus-ergw1-pip"
er_scus_ergw1_ipconfig  = "scus-ergw1-ipconfig"
er1_scus_da11_conn_name = "er1-scus-dall_conn"
er2_scus_ch3_conn_name  = "er2-scus-ch3_conn"

# sub1                             = "<subscription ID - Hub>"

