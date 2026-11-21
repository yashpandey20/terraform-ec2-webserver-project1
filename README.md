
# AWS EC2 Web Server using Terraform

## Project Overview
This project provisions a Linux-based web server on AWS using Terraform (Infrastructure as Code).

## Objective
Deploy an Apache web server on an AWS EC2 instance and host a custom HTML webpage.

## Technologies Used
- AWS EC2
- AWS VPC
- AWS Security Groups
- Terraform
- Ubuntu Linux
- Apache
- Bash scripting

## Infrastructure Components
- VPC and public subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance
- Apache Web Server

## Implementation
1. Configure the AWS provider.
2. Create networking infrastructure using Terraform.
3. Provision an Ubuntu EC2 instance.
4. Install Apache using the user-data Bash script.
5. Deploy a custom HTML webpage.
6. Access the website using the EC2 public IP.

## Project Files
- `main.tf` – Main infrastructure resources
- `provider.tf` – AWS provider configuration
- `variables.tf` – Input variables
- `outputs.tf` – Terraform outputs
- `user_data.sh` – Apache installation and webpage deployment
- `.terraform.lock.hcl` – Provider dependency lock file

## Output
The Apache web server was successfully deployed and the custom webpage was accessible through the browser.

## Author
Yash Pandey

