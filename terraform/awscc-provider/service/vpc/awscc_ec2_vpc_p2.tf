# Terraform code to create AWS VPC via the 'awscc' provider

resource "awscc_ec2_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
