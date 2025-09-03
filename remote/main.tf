terraform {
  backend "azurerm" {
    use_cli              = true
    #tenant_id            = "00000000-0000-0000-0000-000000000000"
    subscription_id      = "e0be8e24-25e7-4901-ad14-ea389c0f1289"
    resource_group_name  = "project-setup-1"
    storage_account_name = "nischiashoksatfstate"
    container_name       = "roboshop-state-files"
    key                  = "test.terraform.tfstate"
  }
}
