### VPC Module

This module is going to create following resources.
* VPC
* Internet Gateway
* 2 public subnets
* 2 private subnets
* 1 public route table and subnet association
* 1 private route table and subnet association

### Arguments

**vpc_cidr** (optional) - Default value is 10.0.0.0/16 <br/>
**vpc_tags** (optional) - User can provide tags, otherwise empty <br/>
**public_route_table_tags**(optional) - User can provide tags, otherwise empty <br/>
**private_route_table_tags**(optional) - User can provide tags, otherwise empty <br/>
**public_subnet_cidr** (Required) - User must provide 2 valid subnet CIDR <br/>
**public_subnet_name** (Required) - User must provide 2 valid subnet names <br/>
**private_subnet_cidr** (Required) - User must provide 2 valid subnet CIDR <br/>
**private_subnet_name** (Required) - User must provide 2 valid subnet names <br/>

