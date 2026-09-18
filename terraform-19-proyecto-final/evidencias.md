PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-19-proyecto-final> terraform init
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
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-19-proyecto-final> terraform fmt
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-19-proyecto-final> terraform validate
Success! The configuration is valid.

PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-19-proyecto-final> terraform plan
data.aws_ami.amazon_linux: Reading...

Terraform used the selected providers to generate the following execution plan. Resource
actions are indicated with the following symbols:
  + create

Terraform planned the following actions, but then encountered a problem:

  # aws_s3_bucket.bucket_aula will be created
  + resource "aws_s3_bucket" "bucket_aula" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "proyecto-final-saramarco-sara-2026"
      + bucket_domain_name          = (known after apply)
      + bucket_namespace            = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_region               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = "us-east-1"
      + request_payer               = (known after apply)
      + tags                        = {
          + "Name" = "proyecto-final-saramarco-s3"
        }
      + tags_all                    = {
          + "Name" = "proyecto-final-saramarco-s3"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # aws_security_group.web_sg will be created
  + resource "aws_security_group" "web_sg" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "terraform-web-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + region                 = "us-east-1"
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # aws_subnet.privada will be created
  + resource "aws_subnet" "privada" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.100.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name" = "proyecto-final-saramarco-privada"
        }
      + tags_all                                       = {
          + "Name" = "proyecto-final-saramarco-privada"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.publica will be created
  + resource "aws_subnet" "publica" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.100.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name" = "proyecto-final-saramarco-publica"
        }
      + tags_all                                       = {
          + "Name" = "proyecto-final-saramarco-publica"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.100.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
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
          + "Name" = "proyecto-final-saramarco-vpc"
        }
      + tags_all                             = {
          + "Name" = "proyecto-final-saramarco-vpc"
        }
    }

Plan: 5 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + bucket_name = (known after apply)
  + vpc_id      = (known after apply)
╷
│ Error: reading EC2 AMIs: operation error EC2: DescribeImages, https response error StatusCodare not authorized to perform this operation. User: arn:aws:sts::428602329094:assumed-role/voclabs/user4549461=a29320@svalero.com is not authorized to perform: ec2:DescribeImages with an explicit deny in an identity-based policy: arn:aws:iam::428602329094:policy/voc-cancel-cred
│ 
│   with data.aws_ami.amazon_linux,
│   on main.tf line 53, in data "aws_ami" "amazon_linux":
│   53: data "aws_ami" "amazon_linux" {
│ 
╵
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-19-proyecto-final> terraform apply
data.aws_ami.amazon_linux: Reading...

Terraform used the selected providers to generate the following execution plan. Resource
actions are indicated with the following symbols:
  + create

Terraform planned the following actions, but then encountered a problem:

  # aws_s3_bucket.bucket_aula will be created
  + resource "aws_s3_bucket" "bucket_aula" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "proyecto-final-saramarco-sara-2026"
      + bucket_domain_name          = (known after apply)
      + bucket_namespace            = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_region               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = "us-east-1"
      + request_payer               = (known after apply)
      + tags                        = {
          + "Name" = "proyecto-final-saramarco-s3"
        }
      + tags_all                    = {
          + "Name" = "proyecto-final-saramarco-s3"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # aws_security_group.web_sg will be created
  + resource "aws_security_group" "web_sg" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "terraform-web-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + region                 = "us-east-1"
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # aws_subnet.privada will be created
  + resource "aws_subnet" "privada" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.100.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name" = "proyecto-final-saramarco-privada"
        }
      + tags_all                                       = {
          + "Name" = "proyecto-final-saramarco-privada"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.publica will be created
  + resource "aws_subnet" "publica" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.100.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name" = "proyecto-final-saramarco-publica"
        }
      + tags_all                                       = {
          + "Name" = "proyecto-final-saramarco-publica"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.100.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
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
          + "Name" = "proyecto-final-saramarco-vpc"
        }
      + tags_all                             = {
          + "Name" = "proyecto-final-saramarco-vpc"
        }
    }

Plan: 5 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + bucket_name = (known after apply)
  + vpc_id      = (known after apply)
╷
│ Error: reading EC2 AMIs: operation error EC2: DescribeImages, https response error StatusCodare not authorized to perform this operation. User: arn:aws:sts::428602329094:assumed-role/voclabs/user4549461=a29320@svalero.com is not authorized to perform: ec2:DescribeImages with an explicit deny in an identity-based policy: arn:aws:iam::428602329094:policy/voc-cancel-cred
│ 
│   with data.aws_ami.amazon_linux,
│   on main.tf line 53, in data "aws_ami" "amazon_linux":
│   53: data "aws_ami" "amazon_linux" {
│ 
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-19-proyecto-final> terraform output
╷
│ Warning: No outputs found
│ 
│ The state file either has no outputs defined, or all the defined outputs are empty. Please
│ define an output in your configuration with the `output` keyword and run `terraform
│ refresh` for it to become available. If you are using interpolation, please verify the
│ interpolated value is not empty. You can use the `terraform console` command to assist.
╵
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-19-proyecto-final> terraform apply 

Terraform used the selected providers to generate the following execution plan. Resource
actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.servidor will be created
  + resource "aws_instance" "servidor" {
      + ami                                  = "ami-0cdb4c9b0d678e416"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + force_destroy                        = false
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_group_id                   = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + region                               = "us-east-1"
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "proyecto-final-saramarco-ec2"
        }
      + tags_all                             = {
          + "Name" = "proyecto-final-saramarco-ec2"
        }
      + tenancy                              = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + primary_network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)

      + secondary_network_interface (known after apply)
    }

  # aws_s3_bucket.bucket_aula will be created
  + resource "aws_s3_bucket" "bucket_aula" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "proyecto-final-saramarco-sara-2026"
      + bucket_domain_name          = (known after apply)
      + bucket_namespace            = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_region               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = "us-east-1"
      + request_payer               = (known after apply)
      + tags                        = {
          + "Name" = "proyecto-final-saramarco-s3"
        }
      + tags_all                    = {
          + "Name" = "proyecto-final-saramarco-s3"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # aws_security_group.web_sg will be created
  + resource "aws_security_group" "web_sg" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "terraform-web-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + region                 = "us-east-1"
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # aws_subnet.privada will be created
  + resource "aws_subnet" "privada" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.100.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name" = "proyecto-final-saramarco-privada"
        }
      + tags_all                                       = {
          + "Name" = "proyecto-final-saramarco-privada"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.publica will be created
  + resource "aws_subnet" "publica" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.100.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name" = "proyecto-final-saramarco-publica"
        }
      + tags_all                                       = {
          + "Name" = "proyecto-final-saramarco-publica"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.100.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
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
          + "Name" = "proyecto-final-saramarco-vpc"
        }
      + tags_all                             = {
          + "Name" = "proyecto-final-saramarco-vpc"
        }
    }

Plan: 6 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + bucket_name   = (known after apply)
  + ec2_id        = (known after apply)
  + ec2_public_ip = (known after apply)
  + vpc_id        = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.vpc_aula: Creating...
aws_s3_bucket.bucket_aula: Creating...
╷
│ Error: creating EC2 VPC: operation error EC2: CreateVpc, https response error StatusCode: 403, RequestID: d4de8076-c771-4a36-91e0-f599e131e48e, api error UnauthorizedOperation: You are not authorized to perform this operation. User: arn:aws:sts::428602329094:assumed-role/voclabs/user4549461=a29320@svalero.com is not authorized to perform: ec2:CreateVpc on resource: arn:aws:ec2:us-east-1:428602329094:vpc/* with an explicit deny in an identity-based policy: arn:aws:iam::428602329094:policy/voc-cancel-cred. Encoded authorization failure message: kLm6j94F6xJ-eKB5Qzzk9I8hJk_ExDnGhHW-xoJKwbTrEeyWACIBhAyhLgOK1TW0UmntpcpgiZnLgXgAnsD1vRcjSy9IqcQW_ttCjnNkZXHIuB7phZyYIbvweozrFYx3H_zeE6YPKL11w3hniuEOtrK7pBlR2t_RSPCcFGyYSjYtBJmL6toqDfDFqhNewrFO-Y5dIBHqMh9YGXcM1i3vj8wV-U0Ij83Gd1F-pc-rk-ESErleeeYfil-OqdtrEMBUZdm1PquUWb5m7qFxn8u_Di_Yt2pzBkbjWZ7i7M8AqH7YAnao7TxAS3hl0VnxApZLawJRJoHlttdI7cGF0U7aJKH3AzofMS26uT5appWQNlBu2DBtSB3mVkDj-u8kts_FX3lK8aFq7U3dxcvtMQdcGccGO_cmHckcEbR-uQjSaHabnu35_i5Rp_-oxbC0XiPDK17d4Np5FX4AelM6VNJyF-EN9BAn_vnv1siYYEmtNq3ml-T-dGZxTv0OLQapyr4l_qcIKkqZsTDfQwlcFX24OfhMtQYxeDcnD7u-0VSHx8Q2uBGrsf0-gqUkh9EzsekxJXw3hSgnra9vzKfHXIb7CtJyc-XFpp6hsjRH26csM7ZrZmf6FwW48m6YEsXaeuUXZsHaFrZAMEavqZSvqCDT-tXu5w2Yfkjrzsb0GvXKkw
│ 
│   with aws_vpc.vpc_aula,
│   on main.tf line 5, in resource "aws_vpc" "vpc_aula":
│    5: resource "aws_vpc" "vpc_aula" {
│ 
╵
╷
│ Error: creating S3 Bucket (proyecto-final-saramarco-sara-2026): operation error S3: CreateBucket, https response error StatusCode: 403, RequestID: 73P5TAM3HJP99YZ3, HostID: 7OBNMb0jxo/3ISffDN6gKC3XBASt4gEHJmOhQkAEAtvBeROkpJEhSgKo8n4TnmYVL8HXFTN7II4=, api error AccessDenied: User: arn:aws:sts::428602329094:assumed-role/voclabs/user4549461=a29320@svalero.com is not authorized to perform: s3:CreateBucket on resource: "arn:aws:s3:::proyecto-final-saramarco-sara-2026" with an explicit deny in an identity-based policy: arn:aws:iam::428602329094:policy/voc-cancel-cred
│ 
│   with aws_s3_bucket.bucket_aula,
│   on main.tf line 66, in resource "aws_s3_bucket" "bucket_aula":
│   66: resource "aws_s3_bucket" "bucket_aula" {
│ 
╵
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-19-proyecto-final> terraform apply   
                                                                                              
Terraform used the selected providers to generate the following execution plan. Resource      
actions are indicated with the following symbols:                                             
  + create                                                                                    
                                                                                              
Terraform will perform the following actions:                                                 
                                                                                              
  # aws_instance.servidor will be created                                                     
  + resource "aws_instance" "servidor" {
      + ami                                  = "ami-0cdb4c9b0d678e416"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + force_destroy                        = false
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_group_id                   = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + region                               = "us-east-1"
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "proyecto-final-saramarco-ec2"
        }
      + tags_all                             = {
          + "Name" = "proyecto-final-saramarco-ec2"
        }
      + tenancy                              = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + primary_network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)

      + secondary_network_interface (known after apply)
    }

  # aws_s3_bucket.bucket_aula will be created
  + resource "aws_s3_bucket" "bucket_aula" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "proyecto-final-saramarco-sara-2026"
      + bucket_domain_name          = (known after apply)
      + bucket_namespace            = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_region               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = "us-east-1"
      + request_payer               = (known after apply)
      + tags                        = {
          + "Name" = "proyecto-final-saramarco-s3"
        }
      + tags_all                    = {
          + "Name" = "proyecto-final-saramarco-s3"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # aws_security_group.web_sg will be created
  + resource "aws_security_group" "web_sg" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "terraform-web-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + region                 = "us-east-1"
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # aws_subnet.privada will be created
  + resource "aws_subnet" "privada" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.100.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name" = "proyecto-final-saramarco-privada"
        }
      + tags_all                                       = {
          + "Name" = "proyecto-final-saramarco-privada"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.publica will be created
  + resource "aws_subnet" "publica" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.100.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name" = "proyecto-final-saramarco-publica"
        }
      + tags_all                                       = {
          + "Name" = "proyecto-final-saramarco-publica"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.100.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
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
          + "Name" = "proyecto-final-saramarco-vpc"
        }
      + tags_all                             = {
          + "Name" = "proyecto-final-saramarco-vpc"
        }
    }

Plan: 6 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + bucket_name   = (known after apply)
  + ec2_id        = (known after apply)
  + ec2_public_ip = (known after apply)
  + vpc_id        = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.vpc_aula: Creating...
aws_s3_bucket.bucket_aula: Creating...
aws_vpc.vpc_aula: Creation complete after 3s [id=vpc-025aab73ea025e97c]
aws_subnet.publica: Creating...
aws_subnet.privada: Creating...
aws_security_group.web_sg: Creating...
aws_subnet.privada: Creation complete after 1s [id=subnet-03a2b5609ce8a9eff]
aws_security_group.web_sg: Creation complete after 4s [id=sg-051a27ac254469701]
aws_subnet.publica: Still creating... [00m10s elapsed]
aws_subnet.publica: Creation complete after 11s [id=subnet-04f03bf3a9e009fbf]
aws_instance.servidor: Creating...
aws_instance.servidor: Still creating... [00m10s elapsed]
aws_instance.servidor: Creation complete after 14s [id=i-044cdaf3f50a8fa0b]
╷
│ Error: reading S3 Bucket (proyecto-final-saramarco-sara-2026) object lock configuration: operation error S3: GetObjectLockConfiguration, https response error StatusCode: 403, RequestID: NRAZ1W1BE7Q3F35W, HostID: lauwGzKvVIN74EKV6Vht56fxFDjTXlCD0odNoTIL9NTNqtRkr0h94XyLn0/molJA2J3wB7at9eY=, api error AccessDenied: User: arn:aws:sts::428602329094:assumed-role/voclabs/user454esource: "arn:aws:s3:::proyecto-final-saramarco-sara-2026" with an explicit deny in a service control policy: arn:aws:organizations::021312171183:policy/o-zmj0qsgu0z/service_control_policy/p-6v4y751d
│ 
│   with aws_s3_bucket.bucket_aula,
│   on main.tf line 66, in resource "aws_s3_bucket" "bucket_aula":
│   66: resource "aws_s3_bucket" "bucket_aula" {
│ 
╵
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-19-proyecto-final> terraform output
ec2_id = "i-044cdaf3f50a8fa0b"
ec2_public_ip = "3.83.188.5"
vpc_id = "vpc-025aab73ea025e97c"
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-19-proyecto-final> terraform destroy
aws_s3_bucket.bucket_aula: Refreshing state... [id=proyecto-final-saramarco-sara-2026]
aws_vpc.vpc_aula: Refreshing state... [id=vpc-025aab73ea025e97c]
aws_subnet.publica: Refreshing state... [id=subnet-04f03bf3a9e009fbf]
aws_subnet.privada: Refreshing state... [id=subnet-03a2b5609ce8a9eff]
aws_security_group.web_sg: Refreshing state... [id=sg-051a27ac254469701]
aws_instance.servidor: Refreshing state... [id=i-044cdaf3f50a8fa0b]
╷
│ Error: reading S3 Bucket (proyecto-final-saramarco-sara-2026) object lock configuration: operation error S3: GetObjectLockConfiguration, https response error StatusCode: 403, RequestID: 5FMKF8BD7W3BJH9Q, HostID: 8Tbw4Ed+1dYP38nr8hayHCoJwI3baexUDEeuI3og+KKV/k2lE22JdvH8jurGoN9sqJ+o66RDjec=, api error AccessDenied: User: arn:aws:sts::428602329094:assumed-role/voclabs/user4549461=a29320@svalero.com is not authorized to perform: s3:GetBucketObjectLockConfiguration on resource: "arn:aws:s3:::proyecto-final-saramarco-sara-2026" with an explicit deny in a service control policy: arn:aws:organizations::021312171183:policy/o-zmj0qsgu0z/service_control_policy/p-6v4y751d
│ 
│   with aws_s3_bucket.bucket_aula,
│   on main.tf line 66, in resource "aws_s3_bucket" "bucket_aula":
│   66: resource "aws_s3_bucket" "bucket_aula" {
│ 
╵