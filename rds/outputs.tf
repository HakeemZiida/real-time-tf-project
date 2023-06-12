output "db_instance_id" {
  description = "The ID of the created RDS instance"
  value       = aws_db_instance.default.id
}

output "db_endpoint" {
  description = "The endpoint address of the RDS instance"
  value       = aws_db_instance.default.endpoint
}
