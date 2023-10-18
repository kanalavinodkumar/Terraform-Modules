module "security_group" {
  source = "../terraform-aws-sg"
  vpc_id = local.vpc_id
  security_group_name = var.security_group_name
  security_group_tags = merge(var.vpc_tags,
                            {
                            Name = "Terraform-SG"
                            }
                        )
}