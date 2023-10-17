module "this" {
  source = "git::https://github.com/kanalavinodkumar/aws-vpc.git?ref=v0.0.1"
  vpc_cidr = var.vpc_cidr
  vpc_tags = var.vpc_tags
  igw_tags = var.igw_tags
  public_subnet_cidr = var.public_subnet_cidr
  public_subnet_name = var.public_subnet_name
  private_subnet_cidr = var.private_subnet_cidr
  private_subnet_name = var.private_subnet_name
  public_route_table_tags = merge(
    var.vpc_tags,
    {
      Name = "public-RT"
    }
  )
  
  private_route_table_tags = merge(
    var.vpc_tags,
    {
      Name = "private-RT"
    }
  )
}