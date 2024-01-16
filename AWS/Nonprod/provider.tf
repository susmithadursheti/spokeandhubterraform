provider "aws" {
  region     = var.region
  access_key = ""
  secret_key = ""
  default_tags {
    tags = {
      Created-By = "terraform"
    }
  }
}