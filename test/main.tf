resource "random_password" "password" {
  count            = var.password_count
  length           = 16
  override_special = "!#$%&*-_=+[]{}<>:?"
}

output "value" {
  value = random_password.password[29].result
}
