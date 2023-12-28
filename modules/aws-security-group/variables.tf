variable "region" {
  type        = string
  description = "Region where to deploy resources."
}

variable "name" {
  type        = string
  description = "Security group name."
  default     = "Name"
}

variable "list_of_rules" {
  description = "List of security rules."
  type = list(object({
    type              = string
    protocol          = string
    from_port         = number
    to_port           = number
    source_cidrs      = list(string)
    destination_cidrs = list(string)
    description       = string
  }))
}

variable "vpc_id" {
  description = "VPC id"
  type        = string
}

variable "description" {
  description = "Security group description."
  type        = string
}