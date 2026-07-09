output "current_account_id" {
  description = "AWS account id detected by terraform"
  value       = data.aws_caller_identity.current.account_id
}