resource "aws_s3_bucket" "storage" {
  for_each = var.buckets

  bucket = each.value

  lifecycle {
    prevent_destroy = true
  }
}