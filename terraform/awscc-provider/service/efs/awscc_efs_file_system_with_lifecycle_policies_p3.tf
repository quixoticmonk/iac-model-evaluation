# Write Terraform configuration that creates EFS File System with lifecycle policies, use awscc provider

resource "awscc_efs_file_system" "this" {
  lifecycle_policies = [{
    transition_to_ia = "AFTER_30_DAYS"
  }]

  file_system_tags = [
    {
      key   = "Name"
      value = "this"
    },
    {
      key   = "Modified By"
      value = "AWSCC"
    }
  ]
}