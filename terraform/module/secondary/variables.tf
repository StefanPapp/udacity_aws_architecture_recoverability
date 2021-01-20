variable vpc_cidr_block {
  description = "CIDR block for the primary VPC"
  type        = string
  default     = "10.196.0.0/16"
}

variable environment {
  description = "udacity"
  type        = string
  default     = "udacity"
}

variable subnet_cidr_blocks {
  description = "Available cidr blocks for public subnets.  Used only when 'is_private' is set to true.  Leave empty otherwise"
  type        = list(string)
  default = [
    "10.196.0.0/24",
    "10.196.1.0/24"
  ]
}

variable availabilty_zones {
  description = "Available cidr blocks for public subnets.  Used only when 'is_private' is set to true.  Leave empty otherwise"
  type        = list(string)
  default = [
    "eu-west-1a",
    "eu-west-1b"
  ]
}
