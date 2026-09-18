PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-02-s3> terraform init
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
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-00-configuracion\terraform-01-ec2\terraform-02-s3> terraform validate
Success! The configuration is valid.

PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-02-s3> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.bucket_aula will be created
  + resource "aws_s3_bucket" "bucket_aula" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "aws_lab_cuaderno1_sara"
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
          + "Name" = "terraform-s3-aula"
        }
      + tags_all                    = {
          + "Name" = "terraform-s3-aula"
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

    }

Plan: 1 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these
actions if you run "terraform apply" now.
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-02-s3> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.bucket_aula will be created
  + resource "aws_s3_bucket" "bucket_aula" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "aws_lab_cuaderno1_sara"
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
          + "Name" = "terraform-s3-aula"
        }
      + tags_all                    = {
          + "Name" = "terraform-s3-aula"
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

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_s3_bucket.bucket_aula: Creating...
╷r StatusCode: 400, RequestID: H4XAYS0G85MBZK8P, HostID: QLHjUhg+LP2QzmR+qDwMXc7alDc3WTSfONoF1qsuNDiqUV0OKTmnDNHGDKg1nEkK7fs30B6F9KM=, api error InvalidBucketName: The specified bucket is not valid.
│ 
│   with aws_s3_bucket.bucket_aula,
│   on main.tf line 13, in resource "aws_s3_bucket" "bucket_aula":
│   13: resource "aws_s3_bucket" "bucket_aula" {
│ 
╵
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-02-s3> terraform plan 

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.bucket_aula will be created
  + resource "aws_s3_bucket" "bucket_aula" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "aws-lab-cuaderno1-sara"
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
          + "Name" = "terraform-s3-aula"
        }
      + tags_all                    = {
          + "Name" = "terraform-s3-aula"
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

    }

Plan: 1 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these
actions if you run "terraform apply" now.
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-02-s3> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.bucket_aula will be created
  + resource "aws_s3_bucket" "bucket_aula" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "aws-lab-cuaderno1-sara"
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
          + "Name" = "terraform-s3-aula"
        }
      + tags_all                    = {
          + "Name" = "terraform-s3-aula"
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

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_s3_bucket.bucket_aula: Creating...
╷
│ Error: reading S3 Bucket (aws-lab-cuaderno1-sara) object lock configuration: operation error S3: GetObjectLockConfiguration, https response error StatusCode: 403, RequestID: ZF2HG1778GPY7V8X, HostID: vbBYvAi8vttCw1XceMYQP3k2JaDcYaD1dkyxs9ceoROV7BeLg5YB3BudkJKo711vBzAS/bzsX9MZ7vO7zPwuSQdgNGDU1unA, api error AccessDenied: User: arn:aws:sts::428602329094:assumed-role/voclabs/user4549461=a29320@svalero.com is not authorized toplicit deny in a service control policy: arn:aws:organizations::021312171183:policy/o-zmj0qsgu0z/service_control_policy/p-6v4y751d
│ 
│   with aws_s3_bucket.bucket_aula,
│   on main.tf line 13, in resource "aws_s3_bucket" "bucket_aula":
│   13: resource "aws_s3_bucket" "bucket_aula" {
│ 
╵
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-00-configuracion\terraform-01-ec2\terraform-02-s3> terraform destroy
aws_s3_bucket.bucket_aula: Refreshing state... [id=aws-lab-cuaderno1-sara]
╷
│ Error: reading S3 Bucket (aws-lab-cuaderno1-sara) object lock configuration: operation error S3: GetObjectLockConfiguration, https response error StatusCode: 403, RequestID: ZSRNTJXY5KCY40Z8, HostID: Enz3uNS6HoytA0oysijPpMasNpj7L1FcP92BTzIZYuNYSK9jzXZnfENjHEIQHThEIk8ocKahan8=, api error AccessDenied: User: arn:aws:sts::428602329094:assumed-role/voclabs/user4549461=a29320@svalero.com is not authorized to perform: s3:GetBucketObjectLockConfiguration on resource: "arn:aws:s3:::aws-lab-cuaderno1-sara" with an explicit deny in a service control policy: arn:aws:organizations::021312171183:policy/o-zmj0qsgu0z/service_control_policy/p-6v4y751d
│ 
│   with aws_s3_bucket.bucket_aula,
│   on main.tf line 13, in resource "aws_s3_bucket" "bucket_aula":
│   13: resource "aws_s3_bucket" "bucket_aula" {
│ 
╵