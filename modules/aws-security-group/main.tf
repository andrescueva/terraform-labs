provider "aws" {
  region = var.region
}

resource "aws_security_group" "sg" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id
  dynamic "ingress" {
    for_each = [for rule in var.list_of_rules : rule if rule.type == "ingress"]
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.source_cidrs
      description = ingress.value.description
    }
  }

  dynamic "egress" {
    for_each = [for rule in var.list_of_rules : rule if rule.type == "egress"]
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.destination_cidrs
      description = egress.value.description
    }
  }
}