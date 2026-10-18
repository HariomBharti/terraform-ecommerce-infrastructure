terraform {
  backend "s3" {
    bucket       = "ecommerce-dev-product-assets-hariom901-arrow11"
    key          = "terraform-state/dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}