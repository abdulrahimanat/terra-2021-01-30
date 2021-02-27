provider "aws" {
  region = var.region
  access_key = var.abdul_acces
  secret_key = var.abdul_secret
}

variable "abdul_acces" {}
variable "abdul_secret" {}
