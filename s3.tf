module "s3_bucket" {
  source                  = "git@github.com:karthickkumars/terraform-aws-modules//s3?ref=master"
  bucket                  = local.COP_test
  acl                     = "private"
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true
  attach_policy           = true
  /*
  policy                  = data.aws_iam_policy_document.max_feast_s3_bucket_policy.json
  tags                    = module.label-s3-bucket.tags
  versioning = {
    enabled = true
  }
  logging = {
    target_bucket = local.s3_bucket_log
    target_prefix = "S3Logs/${local.ml_feast_s3_bucket_name}"
  }
  lifecycle_rule = [
    {
      id      = "${local.ml_feast_s3_bucket_name}-lifecycle"
      enabled = true
      prefix  = ""
      transition = [
        {
          days          = 31
          storage_class = "GLACIER"
          }, {
          days          = 401
          storage_class = "DEEP_ARCHIVE"
        }
      ]
    }
  ]
  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        kms_master_key_id = "arn:aws:kms:${local.aws_region}:${local.aws_account}:key/${module.feast_kms_keys.key_id}"
        sse_algorithm     = "aws:kms"
      }
    }
  }
}
*/
