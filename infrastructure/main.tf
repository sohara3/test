variable "password_count" {
  type    = number
  default = 0
}

resource "random_password" "password" {
  count            = var.password_count
  length           = 16
  override_special = "!#$%&*-_=+[]{}<>:?"
}

output "value" {
  value = random_password.password[var.password_count - 1].result
}
