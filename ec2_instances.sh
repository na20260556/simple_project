#!/bin/bash
# Script to list EC2 instances in your AWS account

# Optional: Set the AWS region here
# REGION="us-east-1"

echo "Fetching EC2 instances..."

# List EC2 instances with Instance ID, State, Type, and Public IP
aws ec2 describe-instances \
    --query "Reservations[*].Instances[*].[InstanceId,State.Name,InstanceType,PublicIpAddress]" \
    --output table # --region $REGION   # Uncomment and set REGION if needed

echo "Done."
