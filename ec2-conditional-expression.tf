# ==========================================================
# Terraform EC2 Instance (Conditional Deployment Example)
# ==========================================================

provider "aws" {
  region = var.region
}

resource "aws_instance" "myec2" {
  ami           = "ami-00c39f7145c08778" # Replace with your own AMI ID
  instance_type = var.environment == "production" && var.region == "us-east-1" ? "t2.micro" : "m5.large"

  tags = {
    Name        = "Conditional-EC2"
    Environment = var.environment
    Region      = var.region
  }
}
