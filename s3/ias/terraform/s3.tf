# 

resource "aws_s3_bucket" "example" {
  bucket = "omnisslayer011976"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object#uploading-a-file-to-a-bucket:~:text=Uploading%20a%20file,file%22)%0A%7D

resource "aws_s3_object" "object" {
  bucket = "omnisslayer011976"
  key    = "testfile.txt"
  source = "testfile.txt"
  
  etag = filemd5("testfile.txt")
}
