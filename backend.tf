terraform {
  cloud {
    organization = "jake-adams-wwt"

    workspaces {
      name = "azure-reporting-demo"
    }
  }
}