# 🚀 Scalable Web Application on AWS
## 📌 Project Overview

This project demonstrates the design and deployment of a highly available, scalable, and production-style web application using core AWS services.

The architecture ensures:

- High availability

- Automatic scaling

- Load balancing

- Secure networking

- Separation of static and compute resources

- This setup simulates a real-world cloud deployment environment.

  ---

##  🏗 Architecture
### 🔁 Architecture Flow
User → Application Load Balancer → EC2 (Auto Scaling Group)
EC2 → S3 (Static Files)
VPC → Public & Private Subnets
IAM → Secure Access Control

---

## 🛠 AWS Services Used

- Amazon EC2

- Application Load Balancer (ALB)

- Auto Scaling Group (ASG)

- Amazon S3

- AWS IAM

- Amazon VPC

- Security Groups

---

## ⚙️ Implementation Steps
### 🔹 Step 1: Create Custom VPC

A production-style custom VPC was created.

**Configuration:**

- CIDR Block: 10.0.0.0/16

- Public Subnet (for ALB & Web Servers)

- Private Subnet (for future DB use)

- Internet Gateway attached

- Route tables configured

**Purpose:**

Demonstrates networking knowledge and subnet isolation.

---

## 🔹 Step 2: Launch EC2 Instance

An Amazon Linux 2 instance was launched to host the website.

**Configuration:**

- AMI: Amazon Linux 2

- Instance Type: t2.micro

- Security Group:

  - HTTP (80)

  - SSH (22)

**Apache Installation Commands:**

```bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
```
---

![Sample Web Page](screen-shots/ec2-user-data-index.html)
