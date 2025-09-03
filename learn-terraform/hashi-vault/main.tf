provider "vault" {
  address = "http://vault.omshiva.shop:8200"
  token   = var.token
}

variable "token" {}

data "vault_generic_secret" "secret" {
  path = "demo/ssh"
}
