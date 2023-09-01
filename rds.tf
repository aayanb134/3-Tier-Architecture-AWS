# Creating RDS Instance
resource "aws_db_instance" "rds_instance" {
  depends_on             = [module.vpc]
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  multi_az               = false
  db_name                = "my_rds"
  username               = var.username
  password               = var.password
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.my_rds.id
  vpc_security_group_ids = [module.public_bastion_sg.this_security_group_id, module.private_sg.this_security_group_id]
  #vpc_security_group_ids = [module.private_sg.this_security_group_id]
  availability_zone = var.vpc_availability_zones[0]

}

resource "aws_db_subnet_group" "my_rds" {
  name       = var.db_subnet_group_name
  subnet_ids = module.vpc.database_subnets

  tags = {
    Name = "My DB subnet group"
  }
}

# Enable for RDS Replica in another AZ

# resource "aws_db_instance_automated_backups_replication" "default" {
#   source_db_instance_arn = aws_db_instance.rds_instance.arn
# }
