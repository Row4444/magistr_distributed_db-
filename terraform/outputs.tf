output "rds_instance_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = aws_db_instance.default.endpoint
}

output "rds_instance_address" {
  description = "The address of the RDS instance"
  value       = aws_db_instance.default.address
}
