#!/bin/bash

S3_OBJECT=$1
S3_EXPIRE={Expire time}
S3_BUCKET="{S3 Bucket}"
AWS_PROFILE="{AWS CLI Profile}"

aws s3 presign s3://${S3_BUCKET}/${S3_OBJECT} --expires-in ${S3_EXPIRE} --profile ${AWS_PROFILE}
