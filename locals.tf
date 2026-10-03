locals {
  bucket_name = "ecommerce-${var.environment}-product-assets-arun"
}
locals {
  storage_requirements = {
    assets = "product-assets"
    logs   = "application-logs"
    backup = "backup"
  }
}

locals {
  versioning_enabled = var.environment == "prod" ? true : false
}

locals {
  storage_names = [
    for name in values(local.storage_requirements) :
    "ecommerce-${var.environment}-${name}-Hariom"
  ]
}

locals {
  current_region = data.aws_region.current.region
}