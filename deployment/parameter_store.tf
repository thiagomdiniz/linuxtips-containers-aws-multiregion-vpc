resource "aws_ssm_parameter" "vpc" {
  name  = "/${var.project_name}/vpc/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "private_subnets" {
  count = length(var.private_subnets)

  name  = "/${var.project_name}/vpc/private/${var.private_subnets[count.index].availability_zone}"
  type  = "String"
  value = module.vpc.private_subnets[count.index]
}

resource "aws_ssm_parameter" "public_subnets" {
  count = length(var.public_subnets)

  name  = "/${var.project_name}/vpc/public/${var.public_subnets[count.index].availability_zone}"
  type  = "String"
  value = module.vpc.public_subnets[count.index]
}