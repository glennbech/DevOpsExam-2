terraform {
  backend "s3" {
    bucket = "kandidat-2028"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}