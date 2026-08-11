# Specify the Provider details
provider "aws" {
region = "ap-south-1"
}

# Define variables
variable "amiid" {
default = "ami-01a00762f46d584a1"
}

variable "type" {
default = "t3.micro"
}

# Specify the EC2 details
resource "aws_instance" "example" {
ami           = var.amiid
instance_type = var.type
}

# Specify the Backend details
terraform {
backend "s3" {
bucket         = "vinnov-2026-tfstate"
key            = "demo/demo.tfstate"
region         = "ap-south-1"
encrypt        = true

# Enable new native locking
use_lockfile   = true

}
}