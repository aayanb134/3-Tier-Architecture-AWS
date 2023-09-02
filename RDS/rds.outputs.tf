output "rds_instance_engine" {
  value       = aws_db_instance.rds_instance.engine
  description = "The engine used by the RDS instance"
}

output "rds_instance_engine_version" {
  value       = aws_db_instance.rds_instance.engine_version
  description = "The engine version used by the RDS instance"
}

output "rds_instance_class" {
  value       = aws_db_instance.rds_instance.instance_class
  description = "The instance class of the RDS instance"
}

output "rds_instance_availability_zone" {
  value       = aws_db_instance.rds_instance.availability_zone
  description = "The availability zone of the RDS instance"
}

output "rds_subnet_group_name" {
  value       = aws_db_subnet_group.my_rds.name
  description = "The name of the RDS subnet group"
}

output "rds_subnet_group_subnet_ids" {
  value       = aws_db_subnet_group.my_rds.subnet_ids
  description = "The list of subnet IDs in the RDS subnet group"
}
