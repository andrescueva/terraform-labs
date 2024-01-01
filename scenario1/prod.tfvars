list_of_rules = [
  {
    type               = "egress"
    protocol           = "-1"
    destination_cidrs  = ["0.0.0.0/0"]
    from_port          = 0
    to_port            = 0
    source_cidrs       = null
    security_group_ids = null
    description        = "Allow egress"
  },
  {
    description        = "Allow HTTP from random IPs",
    from_port          = 0,
    to_port            = 0,
    protocol           = "-1",
    security_group_ids = null,
    source_cidrs       = ["0.0.0.0/0"],
    type               = "ingress"
    destination_cidrs  = null
  }
]