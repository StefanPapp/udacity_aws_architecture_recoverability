resource "aws_vpc" "primary" {
  cidr_block           = "10.0.0.0/24"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags                 = {
    Project   = format("%s", "Udacity")
    Name      = format("%s", "Primary")
  }
}


