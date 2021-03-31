resource "aws_s3_bucket" "treinamento-concrete_s3" {
  bucket = "treinamento-concrete-s3"
  acl    = "public-read"

  tags = {
    Name = "Concrete S3"
  }
}