module infra { #ec2_son chi la name
  source = "./module/infraec2s3"
  region = "ap-southeast-1"
  instancetype = "t2.micro"
  bucketname = "sonlt3bucket1235678"
  # bucket_name = "bucket123"
}
