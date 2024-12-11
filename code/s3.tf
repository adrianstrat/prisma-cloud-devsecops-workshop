provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "ceb8f00a-174f-4ac9-96b7-96b3e1cffa39"
    git_commit           = "b5660f1bb3b261b09b1f7a02002c7dd8e45bc7a9"
    git_file             = "code/s3.tf"
    git_last_modified_at = "2024-12-11 17:29:10"
    git_last_modified_by = "adrianstrat@yahoo.com"
    git_modifiers        = "adrianstrat"
    git_org              = "adrianstrat"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
