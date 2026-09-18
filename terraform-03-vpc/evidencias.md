PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-03-vpc> terraform init
Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v6.65.0...
- Installed hashicorp/aws v6.65.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.


You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-03-vpc> terraform validate
Success! The configuration is valid.

PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-03-vpc> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.10.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + region                               = "us-east-1"
      + tags                                 = {
          + "Name" = "terraform-vpc-aula"
        }
      + tags_all                             = {
          + "Name" = "terraform-vpc-aula"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these
actions if you run "terraform apply" now.
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-00-configuracion\terraform-01-ec2\terraform-02-s3\terraform-03-vpc> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.10.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + region                               = "us-east-1"
      + tags                                 = {
          + "Name" = "terraform-vpc-aula"
        }
      + tags_all                             = {
          + "Name" = "terraform-vpc-aula"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Only 'yes' will be accepted to approve.


aws_vpc.vpc_aula: Creating...
aws_vpc.vpc_aula: Creation complete after 2s [id=vpc-03e0d4c37fc9780ad]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-00-configuracion\terraform-01-ec2\terraform-02-s3\terraform-03-vpc> terraform state list
aws_vpc.vpc_aula
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-00-configuracion\terraform-01-ec2\terraform-02-s3\terraform-03-vpc> terraform destroy
aws_vpc.vpc_aula: Refreshing state... [id=vpc-03e0d4c37fc9780ad]

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be destroyed
  - resource "aws_vpc" "vpc_aula" {
      - arn                                  = "arn:aws:ec2:us-east-1:428602329094:vpc/vpc-03e0d4c37fc9780ad" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.10.0.0/16" -> null
      - default_network_acl_id               = "acl-003e03a127c9df7d1" -> null
      - default_route_table_id               = "rtb-055ef19958353d4c0" -> null
      - default_security_group_id            = "sg-0b763e8801d7f6936" -> null
      - dhcp_options_id                      = "dopt-0a77e1690924e9156" -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-03e0d4c37fc9780ad" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-055ef19958353d4c0" -> null
      - owner_id                             = "428602329094" -> null
      - region                               = "us-east-1" -> null
      - tags                                 = {
          - "Name" = "terraform-vpc-aula"
        } -> null
      - tags_all                             = {
          - "Name" = "terraform-vpc-aula"
        } -> null
        # (4 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_vpc.vpc_aula: Destroying... [id=vpc-03e0d4c37fc9780ad]
aws_vpc.vpc_aula: Destruction complete after 1s

Destroy complete! Resources: 1 destroyed.