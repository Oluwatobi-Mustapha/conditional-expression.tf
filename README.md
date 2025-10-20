# 🧱 Terraform EC2 Conditional Deployment

This Terraform configuration demonstrates how to deploy an **EC2 instance** whose type changes dynamically based on your environment and region.

### 🧩 Logic
- If `environment` = `production` **and** `region` = `us-east-1` → uses **t2.micro**
- Otherwise → uses **m5.large**

### ⚙️ Files
| File | Description |
|------|--------------|
| `main.tf` | Core Terraform code that creates the EC2 instance |
| `variables.tf` | Variable definitions for environment and region |
| `README.md` | Explanation and setup guide |

### 🚀 Usage
```bash
terraform init
terraform plan
terraform apply
```

You can override defaults like this:
terraform apply -var="environment=staging" -var="region=us-west-2"
