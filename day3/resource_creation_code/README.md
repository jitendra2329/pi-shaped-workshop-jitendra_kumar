
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

### What is the difference between Declarative IaC and Imperative Scripting?

    Declarative Infrastructure as Code (IaC) (e.g., Terraform):

        You define what the desired end state of your infrastructure should be.

        Terraform figures out how to reach that state.

        Example: “There should be a VM with 4 vCPUs in us-central1.”

    Imperative Scripting (e.g., Bash, Python with gcloud commands):

        You explicitly define how to reach your goal step by step.

        You are responsible for the execution order and logic.

        Example: gcloud compute instances create ... followed by gcloud storage buckets create ...

####Key difference:
Declarative focuses on outcomes, Imperative focuses on procedures.
🔐 Why is Terraform state important, and how can it become a security risk?

    Terraform state (terraform.tfstate) tracks the actual state of resources in your cloud environment.

    It allows Terraform to determine what changes to apply by comparing the current state with your desired config.

Importance:

    Enables terraform plan to show accurate diffs.

    Ensures consistent, idempotent updates.

    Needed for features like terraform destroy.

Security Risks:

    The state file can contain sensitive data such as:

        Secret keys

        Passwords

        Resource metadata

    If stored or shared insecurely (e.g., in a public repo), it can expose your infrastructure to attackers.

Best Practices:

    Use terraform state encrypt (with backends like S3 + KMS).

    Store state securely (e.g., GCS buckets with IAM policies).

    Use state locking to avoid concurrent corruption.
 
### When should a team use Terraform over manual provisioning?

Use Terraform when:

    You want reproducibility across environments (dev, staging, prod).

    You work in a team and need version-controlled infrastructure.

    You need automation as part of CI/CD pipelines.

    You want to audit changes (via terraform plan, apply, and VCS).

    You’re provisioning multiple resources across services (VMs, buckets, networking, etc.).

    You value rollback and predictability.

Manual provisioning is fine for quick, one-off setups — but doesn’t scale for teams or production-grade systems.
