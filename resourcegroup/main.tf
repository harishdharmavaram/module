provider "azurerm" {
}
terraform {
  backend "azurerm" {
    storage_account_name  = "jdastorage"
	resource_group_name   = "backendstrg"
    container_name        = "statetf"
    key                   = "rg.tfstate"
  }
}
resource "azurerm_resource_group" "rgtest" {
  name    = "${var.name}"
  location  = "${var.location}"
 tags = {
    environment = "testing"
  }
}

