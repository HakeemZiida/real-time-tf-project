resource "aws_db_subnet_group" "default" {
  name       = "${terraform.workspace}-subnet-group"
  subnet_ids = var.private_subnets

  tags = {
    Name = "My DB subnet group"
  }
}


resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = local.skip_final_snapshot

  db_subnet_group_name        = aws_db_subnet_group.default.name


  tags = merge( local.common_tags,{Name = "${terraform.workspace}-rds"})
}
