terraform {
  backend "s3" {
    bucket = "r2sclass-terraforms3backend"
    key    = "moduleinfra"
    region = "ap-southeast-1"
  }
}