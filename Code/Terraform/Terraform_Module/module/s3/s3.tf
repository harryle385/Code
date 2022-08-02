provider "aws" {
  region     = var.region
}
resource "aws_s3_bucket" "sons3" {
  bucket        = var.bucket_name
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = "${aws_s3_bucket.sons3.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": [ "s3:*" ],
      "Resource": [
        "${aws_s3_bucket.sons3.arn}",
        "${aws_s3_bucket.sons3.arn}/*"
      ]
    }
  ]
}
EOF
}