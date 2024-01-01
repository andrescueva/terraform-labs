module "sg" {
  source        = "../modules/aws-security-group"
  name          = "sg"
  description   = "For ecs container instances"
  region        = "us-west-2"
  list_of_rules = var.list_of_rules
  vpc_id        = var.vpc_id
}