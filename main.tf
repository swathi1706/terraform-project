resource "aws_s3_bucket" "s3bucket12" {
    bucket = "awsterraform170609bucket"
    acl = "private"

    tags = {
        Name = "bucket1terra"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket" "s3bucket13" {
    bucket = "awsterraform170610bucket"
    acl = "private"

    tags = {
        Name = "bucketterra2"
        Environment = "Dev"
    }
}
resource "aws_s3_bucket" "s3bucket10" {
    bucket = "awsterraform1706bucket"
    acl = "private"

    tags = {
        Name = "bucketterra6"
        Environment = "Dev"
    }
}