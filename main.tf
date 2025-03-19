resource "aws_ssm_parameter" "default_identity_pool_id" {
  #checkov:skip=CKV2_AWS_34:Non-sensitive parameter
  name      = "/cognito/default_identity_pool_id_${var.unique_tag}"
  type      = "String"
  value     = aws_cognito_identity_pool.identity_pool.id
  overwrite = true
  tags = {

  }
}
