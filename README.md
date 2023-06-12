# Real-Time Terraform Project

This repository contains a Terraform configuration for deploying AWS resources. 

The Terraform configuration creates a VPC, Subnets, NAT Gateway, Route Tables, and EC2 instances in a modularized approach, with separate modules for VPC, subnets, and EC2 instances.

The infrastructure is created in the `us-west-2` AWS region.

## Prerequisites

- Terraform 0.14.x
- AWS Account
- AWS CLI

## Getting Started

1. Clone the repository:

    ```shell
    git clone https://github.com/cvamsikrishna11/real-time-tf-project.git
    cd real-time-tf-project
    ```

2. Initialize Terraform:

    ```shell
    terraform init
    ```

3. Create a plan and apply:

    ```shell
    terraform plan --var-file="input-files/dev.tfvars"
    terraform apply --var-file="input-files/dev.tfvars" --auto-approve
    ```

## Inputs

Most of the inputs are parameterized via Terraform variables in `variables.tf` and `terraform.tfvars` files. 

These include:
- VPC CIDR
- Subnet CIDRs
- AWS Region
- Availability Zones
- EC2 instance type
- AMI ID

## Outputs

The output includes:
- EC2 instance IDs
- EC2 instance public IPs
- VPC ID
- Subnet IDs
- NAT Gateway IDs
- Route Table IDs

## Destroying Infrastructure

When you're done with the infrastructure, you can destroy it by running:

```shell
terraform destroy --var-file="input-files/dev.tfvars" --auto-approve
```