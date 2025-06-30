
## Terraform Project: GCP VM and Storage Bucket

### What it does
- Creates a Compute Engine VM instance
- Creates a Cloud Storage bucket
- Outputs the VM public IP and the bucket URL

### How to use

```bash
terraform init
terraform apply
```

### State Management
Terraform stores the state in a file called `terraform.tfstate` **locally** in this setup.  
This file is **critical** as it tracks the mapping between resources defined in code and their real-world infrastructure.  
If it's lost or corrupted, Terraform may **lose track** of resources, potentially leading to duplication or unwanted deletions.

In production, it's best to use **remote backends** like Google Cloud Storage (GCS), which support locking and team collaboration.
