#!/bin/bash

#######################
# Author: Akshay
# Date: 25th-Oct
# Version: V1
#
# This script will report the AWS resoruce usage
#######################

set +x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM users
#

# list s3 buckets
echo "print list of aws buckets"
aws s3 ls

# list EC2 instances
echo "print list of aws ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list Lambda
echo "print list of aws lambda functions"

aws lambda list-functions

# list IAM users
echo "print list of aws IAM users"

aws iam list-users | jq '.Users [] | {UserName: .UserName, UserId: .UserId} '

