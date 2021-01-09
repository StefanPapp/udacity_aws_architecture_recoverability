resource "aws_vpc" "secondary" {
  cidr_block           = "10.0.1.0/24"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = {
    Project      = format("%s", "Udacity")
    Name         = format("%s", "Secondary")
  }
}
