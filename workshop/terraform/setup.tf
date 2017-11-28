provider "aws" {
    region = "ap-southeast-2"
}

resource "aws_s3_bucket" "abhi-yow-tfstate" {
    bucket = "abhi-yow-tfstate"
    acl = "private"
    versioning {
        enabled  = true
    }
}

terraform {
    backend "s3" {
        bucket = "abhi-yow-tfstate"
        key = "setup/terraform.tfstate"
        region = "ap-southeast-2"
    }
}
