module ec2_son { #ec2_son chi la name
  source = "./module/ec2"
  region = "ap-southeast-1"
  instancetype = "t2.micro"
  # bucket_name = "bucket123"
}
module s3_son {
  source = "./module/s3"
  region = "ap-southeast-1"
  bucket_name = "sonlt3bucket1235"
}
