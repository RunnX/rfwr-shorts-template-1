resource "azurerm_resource_group" "shorts1" {
  name     = var.shorts1-rg
  location = var.location
}

terraform {
  backend "local" {
    path = ".terraform/infrastructure/terraform.tfstate"
  }
}
