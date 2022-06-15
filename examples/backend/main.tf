## Three tests

## Using local source of module
module "s3_backend_test_1" {
  source = "../../s3_backend"

  company     = var.company
  project     = var.project + "-test-1"
  environment = "test"
}

## Using github source without version
module "s3_backend_test_2" {
  source = "github.com/rpgd60/tf-modules//s3-backend/"

  company     = var.company
  project     = var.project + "-test-2"
  environment = "test"
}

## Using github source with reference to module version/tag
module "s3_backend" {
  source = "github.com/rpgd60/tf-modules//s3-backend/v0.9.3"

  company     = var.company
  project     = var.project + "test-3"
  environment = "test"
}

