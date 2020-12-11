#!/bin/bash
#
# Purpose: find the latst AMI version that corresponds to version 10.1* in your AWS regions
#
# Usage: This is for Bash sell in Linux. It can be run on any linux workstation where you have your AWS environment configured.   
#        Find the region you wish to use from the output, and the corresonding AMI id for BYOL and PAYG
#
# Example usage and output is shown below:
#
[centos@ip-10-0-1-234 ~]$ ./aws_ami_seacher.sh
# eu-north-1
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0ad707859b70bf935  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0c67a2a198498ae24  |
# +-------------------------+
# ap-south-1
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-08d58b5894bd05173  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-084dd46be15f52c7d  |
# +-------------------------+
# eu-west-3
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-042f4fed8caa68302  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-09177bcbe0b7106b8  |
# +-------------------------+
# eu-west-2
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-070e4e1605b15ba79  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0725638dde6875652  |
# +-------------------------+
# eu-west-1
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-022697067ec037c34  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0f1c912335d707bcb  |
# +-------------------------+
# ap-northeast-2
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0fc188bfd3429df25  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-086f94398decf5ede  |
# +-------------------------+
# ap-northeast-1
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0c440bb70463c761c  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0e01a67faebc272c2  |
# +-------------------------+
# sa-east-1
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0e178464bbb7a530d  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0cc8a83a11c87669f  |
# +-------------------------+
# ca-central-1
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-076719552aa41f103  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-098ddbd119645a022  |
# +-------------------------+
# ap-southeast-1
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-074e2025720bda866  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0fcd599e26bba5ee6  |
# +-------------------------+
# ap-southeast-2
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-09bd5532ecea3fe7c  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-00ac1459606977d3b  |
# +-------------------------+
# eu-central-1
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0ade308f991ae12c5  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-02b16240bbaf7e9ab  |
# +-------------------------+
# us-east-1
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0aebcd34f6295e8ae  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-05a33eb12b776c506  |
# +-------------------------+
# us-east-2
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-09518256f9e5b428e  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-045e816b1e02b7fef  |
# +-------------------------+
# us-west-1
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0956095ed3768cc50  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0892ee615afca4c0b  |
# +-------------------------+
# us-west-2
# BYOL
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0e8b1bc95320692d6  |
# +-------------------------+
# PAYG
# ---------------------------
# |     DescribeImages      |
# +-------------------------+
# |  ami-0fcb0e67ba0ebe5dc  |
# +-------------------------+
# centos@ip-10-0-1-234 ~]$
for region in `aws ec2 describe-regions --output text | cut -f4`
do
  echo $region
  echo BYOL
  aws ec2 describe-images --region $region --filters "Name=name,Values=CudaW*fw10.1*BYOL*" --query 'sort_by(Images, &CreationDate)[].ImageId'
  echo PAYG
  aws ec2 describe-images --region $region --filters "Name=name,Values=CudaW*fw10.1*PAYG*" --query 'sort_by(Images, &CreationDate)[].ImageId'
done
