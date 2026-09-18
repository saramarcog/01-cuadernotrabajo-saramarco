PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-16-import> terraform init
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
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-16-import> terraform import aws_vpc.vpc_importada vpc-0a7f2a64781a03549
aws_vpc.vpc_importada: Import prepared!
  Prepared aws_vpc for import
aws_vpc.vpc_importada: Refreshing state... [id=vpc-0a7f2a64781a03549]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.

PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-16-import> terraform state list
aws_vpc.vpc_importada
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-16-import> 