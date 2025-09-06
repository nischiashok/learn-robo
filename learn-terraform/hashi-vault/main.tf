provider "vault" {
  address = "http://vault.omshiva.shop:8200"
  token   = var.token
}

variable "token" {}

data "vault_generic_secret" "secret" {
  path = "demo/data/SSH"
}

resource "local_file" "foo" {
  content  = jsonencode(data.vault_generic_secret.secret.data)
  filename = "/tmp/result"
}

resource "local_file" "fool" {
  content  = data.vault_generic_secret.secret.data["password"]
  filename = "/tmp/result-pass"
}
