terraform {
  cloud {
    organization = "jake-adams-wwt"

    workspaces {
      name = "city-bank-az-lx"
    }
  }
}