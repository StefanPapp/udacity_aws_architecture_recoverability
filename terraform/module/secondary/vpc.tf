resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags                 = {
    Project   = format("%s", "Udacity")
    Name      = format("%s", "Secondary"
  }
}

resource "aws_subnet" "default" {
  count = 2
  # for_each = toset(var.subnet_cidr_blocks)
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.subnet_cidr_blocks[count.index]

  availability_zone = var.availabilty_zones[count.index]
  tags = merge(
    map(
      "Name", "${var.environment}-subnet${count.index + 1}"
    )
  )
}