variable "aws_access_key" {
    description = "Your AWS Access Key ID"
}

variable "aws_secret_key" {
    description = "Your AWS Secret Key ID"
}

variable "aws_region" {
    default = "us-east-1"
    description = "The AWS region the VPC will be created in"
}

variable "availability_zones" {
    type = string
    default = "us-east-1a, us-east-1b"
    description = "List of Availability Zones to use for the subnets in the VPC. Note: The logical order is preserved."
}

variable "number_of_azs" {
    type = string
    default = "2"
    description = "Number of Availability Zones to use in the VPC. This must match your selections in the list of Availability Zones parameter."
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
    description = "CIDR block for the VPC"
}

variable "public_subnet_1_cidr" {
    type = string
    default = "10.0.128.0/20"
    description = "CIDR block for the public DMZ subnet 1 located in Availability Zone 1"
}

variable "public_subnet_2_cidr" {
    type = string
    default = "10.0.144.0/20"
    description = "CIDR block for the public DMZ subnet 2 located in Availability Zone 2"
}

variable "public_subnet_3_cidr" {
    type = string
    default = "10.0.160.0/20"
    description = "CIDR block for the public DMZ subnet 3 located in Availability Zone 3"
}

variable "public_subnet_4_cidr" {
    type = string
    default = "10.0.176.0/20"
    description = "CIDR block for the public DMZ subnet 4 located in Availability Zone 4"
}

variable "public_subnet_tag_1" {
    type = string
    default = "Network=Public"
    description = "tag to add to public subnets, in format Key=Value (Optional)"
}

variable "public_subnet_tag_2" {
    type = string
    default = ""
    description = "tag to add to public subnets, in format Key=Value (Optional)"
}

variable "public_subnet_tag_3" {
    type = string
    default = ""
    description = "tag to add to public subnets, in format Key=Value (Optional)"
}

variable "create_private_subnets" {
    type = string
    default = "true"
    description = "Set to false to create only public subnets. If false, the CIDR parameters for ALL private subnets will be ignored."
}

variable "private_subnet_1a_cidr" {
    type = string
    default = "10.0.0.0/19"
    description = "CIDR block for private subnet 1A located in Availability Zone 1"
}

variable "private_subnet_2a_cidr" {
    type = string
    default = "10.0.32.0/19"
    description = "CIDR block for private subnet 2A located in Availability Zone 2"
}

variable "private_subnet_3a_cidr" {
    type = string
    default = "10.0.64.0/19"
    description = "CIDR block for private subnet 3A located in Availability Zone 3"
}

variable "private_subnet_4a_cidr" {
    type = string
    default = "10.0.96.0/19"
    description = "CIDR block for private subnet 4A located in Availability Zone 4"
}

variable "private_subnet_a_tag_1" {
    type = string
    default = "Network=Private"
    description = "tag to add to private subnets A, in format Key=Value (Optional)"
}

variable "private_subnet_a_tag_2" {
    type = string
    default = ""
    description = "tag to add to private subnets A, in format Key=Value (Optional)"
}

variable "private_subnet_a_tag_3" {
    type = string
    default = ""
    description = "tag to add to private subnets A, in format Key=Value (Optional)"
}

variable "create_additional_private_subnets" {
    type = string
    default = "false"
    description = "Set to true to create a network ACL protected subnet in each Availability Zone. If false, the CIDR parameters for those subnets will be ignored. If true, it also requires that the 'Create private subnets parameter is also true to have any effect."
}

variable "private_subnet_1b_cidr" {
    type = string
    default = "10.0.192.0/21"
    description = "CIDR block for private subnet 1B with dedicated network ACL located in Availability Zone 1"
}

variable "private_subnet_2b_cidr" {
    type = string
    default = "10.0.200.0/21"
    description = "CIDR block for private subnet 2B with dedicated network ACL located in Availability Zone 2"
}

variable "private_subnet_3b_cidr" {
    type = string
    default = "10.0.208.0/21"
    description = "CIDR block for private subnet 3B with dedicated network ACL located in Availability Zone 3"
}

variable "private_subnet_4b_cidr" {
    type = string
    default = "10.0.216.0/21"
    description = "CIDR block for private subnet 4B with dedicated network ACL located in Availability Zone 4"
}

variable "private_subnet_b_tag_1" {
    type = string
    default = "Network=Private"
    description = "tag to add to private subnets B, in format Key=Value (Optional)"
}

variable "private_subnet_b_tag_2" {
    type = string
    default = ""
    description = "tag to add to private subnets B, in format Key=Value (Optional)"
}

variable "private_subnet_b_tag_3" {
    type = string
    default = ""
    description = "tag to add to private subnets B, in format Key=Value (Optional)"
}

variable "vpc_tenancy" {
    type = string
    default = "default"
    description = "The allowed tenancy of instances launched into the VPC"
}
