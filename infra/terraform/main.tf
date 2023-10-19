resource "aws_secretsmanager_secret" "mixfast_secrets_manager" {
  name        = "${var.name}_secrets_manager"
  description = "Secrets Manager da aplicação Mix Fast"

  tags = var.tags
}

resource "aws_secretsmanager_secret_version" "mixfast_secrets_manager_version" {
  secret_id     = aws_secretsmanager_secret.mixfast_secrets_manager.id
  secret_string = <<EOF
  {
    "dbpassword": "q1w2e3r4"
  }
EOF
}