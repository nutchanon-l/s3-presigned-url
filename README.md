# Amazon S3 presigned URL Generator
Shell/Linux-based script for generate Amazon S3 presigned URL for temporary public accessable.
## Prerequsites

**AWS-side**

1. Create IAM User with programmatic access, but without any permission/policy.
2. Create Amazon S3 Bucket
3. Apply Amazon S3 Bucket Policy

    * Modify {User ARN} to IAM User ARN
    * Modify {S3 Bucket} to Amazon S3 Bucket

**Client-side**

1. [Install AWS CLI v2 on local machine](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
2. [Configure AWS CLI with profile](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-profiles)
3. Modify the generator script

    * {Expire time} = Number of seconds before URL expired
    * {S3 Bucket} = Amazon S3 Bucket
    * {AWS CLI Profile} = AWS CLI credential profile

## How to use
`$ ./s3-presigned-url.sh {s3_prefix/filename}`