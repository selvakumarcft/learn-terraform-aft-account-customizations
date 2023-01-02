data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox1-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

resource "aws_s3_bucket" "sandbox_bucket1" {
  bucket = "aft-sandbox2-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
