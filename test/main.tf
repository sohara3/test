variable "password_counts" {
  type    = number
  default = 0
}

resource "random_password" "password" {
  count            = var.password_counts
  length           = 16
  override_special = "!#$%&*-_=+[]{}<>:?"
}

output "value" {
  value = random_password.password[0].result
}
