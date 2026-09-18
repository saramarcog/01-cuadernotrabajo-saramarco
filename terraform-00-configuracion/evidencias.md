>> $env:AWS_SESSION_TOKEN="IQoJb3JpZ2luX2VjEHwaCXVzLXdlc3QtMiJIMEYCIQDGdSzAMXXgpNeb/T6Fs+2R2jcC+K09uOz2tqfClGUq/iovEvg9p8Bdzjf+4XZZRw+n5eLPEjjHVS9mS7qituTpbFTo303VBew712N3DFuFqjtn5UJa2s2KJBpcV9uPeH+ZTgldQH5BXT3w45zS1BMTudDlsgtcb/p9tur3Md6zqd1Cdd0bSQ0JZfHt3HCEH87nl+WX9CPNgVJQy20K+btDm1YwXy9CjGDtaLiNq1W00KnFQ1NLmHUVkCTjoxFJrc5cTeuebgD1C4s5xo+AebrKt/z/g91BijbpNSJNIY8W7Kt8Z/O3MWyJE2kKOTi9kR1DGiKZWzceaCW7X3sWcLTPGgf87ueHxhFkGLaRGbVqUVPaYaLyZg3wAUG0MPGjMmyvaMLe/tNUGOpwBjxcqIaueLcOsKMvMDKODVQegnOVhJYVwI0XxsgtgRtBfPxbrQtdMXdc+qrcJ9x/JaPy2KG424I6axEEWDYGMb9kqiPTvQ1Tgq/mBxzJ9VJIPR+GZZyxTrVMjIoCMcd1HQs4fqa4xRNBiIHFS+eSGOr48HDMBO+J61a30lFySAV1IRYkwoz5PBy8ioagSk2r/+YV902X/Q9QZnTCr"
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco> aws --version
aws-cli/2.36.44 Python/3.14.6 Windows/10 exe/AMD64
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco> aws sts get-caller-identity --region us-east-1
{                                                                                                         
    "UserId": "AROAWHSVQRADOX6UW6IY5:user4549461=a29320@svalero.com",
    "Arn": "arn:aws:sts::428602329094:assumed-role/voclabs/user4549461=a29320@svalero.com"
}

PS C:\2DAM\devops\01-cuadernotrabajo-saramarco> terraform version
Terraform v1.16.2
on windows_amd64

Your version of Terraform is out of date! The latest version
is 1.16.3. You can update by downloading from https://developer.hashicorp.com/terraform/install
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco> mkdir terraform-00-configuracion


Mode                 LastWriteTime         Length Name                                                    
----                 -------------         ------ ----                                                    
d-----        18/09/2026     13:33                terraform-00-configuracion                              


PS C:\2DAM\devops\01-cuadernotrabajo-saramarco> cd terraform-00-configuracion
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-00-configuracion> code .
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-00-configuracion> Get-History

  Id CommandLine                                                                                          
  -- -----------                                                                                          
   1 try { . "c:\Users\saram\AppData\Local\Programs\Microsoft VS Code\645f29cc31\resources\app\out\vs\w...
   2 $env:AWS_ACCESS_KEY_ID="ASIAWHSVQRADHWCZDFA7"...                                                     
   3 aws --version                                                                                        
   4 aws sts get-caller-identity --region us-east-1                                                       
   5 terraform version                                                                                    
   6 mkdir terraform-00-configuracion                                                                     
   7 cd terraform-00-configuracion                                                                        
   8 code .          

                                                                                     
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-00-configuracion> terraform init
Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v6.65.0...
- Installed hashicorp/aws v6.65.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.
Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS C:\2DAM\devops\01-cuadernotrabajo-saramarco\terraform-00-configuracion> terraform validate
Success! The configuration is valid.