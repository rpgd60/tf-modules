## Three tests

## Using local source of module
module "s3_backend_test_1" {
  ## source could also be ../../s3-backend  since we are under modules
  source = "../../../modules/s3-backend"  
  company     = var.company
  project     = join("-", [var.project, "1"])
  environment = "test"
}

## Using github source without version
module "s3_backend_test_2" {
  source = "github.com/rpgd60/tf-modules//s3-backend/"

  company     = var.company
  project     = join("-", [var.project, "2"])
  environment = "test"
}

## Using github source with reference to module version/tag
module "s3_backend_test_3" {
  source = "github.com/rpgd60/tf-modules//s3-backend/?ref=v0.9.3"

  company     = var.company
  project     = join("-", [var.project, "3"])
  environment = "test"
}

