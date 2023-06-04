# 2-Tier-App-via-Terraform
This repository contains the Terraform code to deploy infrastructure on AWS. It includes creating a VPC with public and private subnets, launching EC2 instances in the public and private subnets, and creating DynamoDB instance to lock state file that's stored in S3 bucket


# AWS Arhitecture
![image](https://github.com/0xf2y/2-Tier-App-via-Terraform/assets/67473845/8ca743e2-880c-4936-ae54-ee0392ac6dd4)

## Overview
This project uses Terraform to create the following AWS resources:

* VPC
* Internet Gateway.
* Public Route Table.
* Private Route Table.
* Public EC2 instance.
* Private EC2 instance.
* DynamoDB instance.

## Prerequisites
Before running the deployment script, you will need to have the following:

* AWS account.
* Terraform installed on your local machine.
* AWS CLI installed on your local machine.
* AWS credentials configured on your local machine.
* A S3 bucket to store the Terraform file, and DynamoDB to use for state locking.

## To get started:
Clone this repository to your local machine.
```
git clone https://github.com/0xf2y/2-Tier-App-via-Terraform
```
Run ```terraform init``` to download the necessary Terraform plugins.

Run ```terraform plan``` to preview the changes that Terraform plans to make to your infrastructure. 

Run ```terraform apply``` to deploy your infrastructure. 

## Verifying and Testing state lock with DynamoDB.
- inspect ```.terraform/terraform.tfstate```, you will see that it contains the location of the state file now instead of the actual state file.

![image](https://github.com/0xf2y/2-Tier-App-via-Terraform/assets/67473845/dc6adabe-104f-48cb-b043-0e554042e873)

- ```terraform destroy``` to  terminate resources that were created by Terraform. If we have a state lock terraform destroy will not be able to deploy with out access to the state lock.

![image](https://github.com/0xf2y/2-Tier-App-via-Terraform/assets/67473845/1dd2e50e-1daf-4ede-a905-c6f8ce79a942)





