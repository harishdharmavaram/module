provider "azurerm" {
}
terraform {
  backend "azurerm" {
    storage_account_name  = "jdateststrg"
	resource_group_name   = "terraform-rg"
    container_name        = "terragruntversion"
    key                   = "terraform.tfstate"
  }
}
resource "azurerm_resource_group" "rgtest" {
  name    = "${var.name}"
  location  = "${var.location}"
 tags = {
    environment = "testing"
  }
}

