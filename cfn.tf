resource "aws_cloudformation_stack" "vpc-quick-start" {
    name = "kevin-test-stack"
    template_url = "https://aws-quickstart.s3.amazonaws.com/quickstart-aws-vpc/templates/aws-vpc.template"

    parameters = {
        AvailabilityZones = var.availability_zones
        NumberOfAZs = var.number_of_azs
        VPCCIDR = var.vpc_cidr
        PublicSubnet1CIDR = var.public_subnet_1_cidr
        PublicSubnet2CIDR = var.public_subnet_2_cidr
        PublicSubnet3CIDR = var.public_subnet_3_cidr
        PublicSubnet4CIDR = var.public_subnet_4_cidr
        PublicSubnetTag1 = var.public_subnet_tag_1
        PublicSubnetTag2 = var.public_subnet_tag_2
        PublicSubnetTag3 = var.public_subnet_tag_3
        CreatePrivateSubnets = var.create_private_subnets
        PrivateSubnet1ACIDR = var.private_subnet_1a_cidr
        PrivateSubnet2ACIDR = var.private_subnet_2a_cidr
        PrivateSubnet3ACIDR = var.private_subnet_3a_cidr
        PrivateSubnet4ACIDR = var.private_subnet_4a_cidr
        PrivateSubnetATag1 = var.private_subnet_a_tag_1
        PrivateSubnetATag2 = var.private_subnet_a_tag_2
        PrivateSubnetATag3 = var.private_subnet_a_tag_3
        CreateAdditionalPrivateSubnets = var.create_additional_private_subnets
        PrivateSubnet1BCIDR = var.private_subnet_1b_cidr
        PrivateSubnet2BCIDR = var.private_subnet_2b_cidr
        PrivateSubnet3BCIDR = var.private_subnet_3b_cidr
        PrivateSubnet4BCIDR = var.private_subnet_4b_cidr
        PrivateSubnetBTag1 = var.private_subnet_b_tag_1
        PrivateSubnetBTag2 = var.private_subnet_b_tag_2
        PrivateSubnetBTag3 = var.private_subnet_b_tag_3
        VPCTenancy = var.vpc_tenancy
    }
}
