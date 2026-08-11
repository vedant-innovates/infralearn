terraform {
  backend "s3" {
    bucket         = "vinnov-2026-tfstate"
    key            = "product-name/envs/qa_iam.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    
    # Enable new native locking
    use_lockfile   = true 

  }
}
