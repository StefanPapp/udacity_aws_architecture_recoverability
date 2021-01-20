/*
resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  name                 = "udacity"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql8.0"
  db_subnet_group_name = aws_db_subnet_group.default
  skip_final_snapshot  = true
}

resource "aws_db_subnet_group" "default" {
  name       = "main"
  for_each   = toset(var.subnet_cidr_blocks)
  subnet_ids = aws_subnet.default[each.value]

  tags = {
    Name = "My DB subnet group"
  }
} */