terraform {


backend "s3" {
    bucket       = "my-tf-state-11182026"
    key          = "Lab-Store_Infrastructure_In_S3/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}