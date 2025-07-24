resource "aws_s3_bucket" "s3bucket1" {
    bucket = "awsterraform170604bucket"
    acl = "private"

    tags = {
        Name = "bucket1terra"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket" "s3bucket2" {
    bucket = "awsterraform170605bucket"
    acl = "private"

    tags = {
        Name = "bucketterra2"
        Environment = "Dev"
    }
}