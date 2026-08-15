# 🚀 AWS High-Availability 3-Tier Web Architecture

A production-style 3-tier web application deployed in AWS using industry best practices for security, scalability, and high availability.

---

## 📌 Project Overview

This project demonstrates the design and implementation of a highly available 3-tier architecture in AWS using:

- Custom VPC
- Public & Private Subnets (Multi-AZ)
- Application Load Balancer (ALB)
- EC2 Auto Scaling Group (ASG)
- Amazon RDS (MySQL)
- NAT Gateway
- Security Groups
- Session Manager

The architecture ensures secure communication between tiers while maintaining scalability and fault tolerance.

---


### Key Design Principles:
- High Availability across multiple Availability Zones
- Layered Security using Security Groups
- No direct public access to EC2 or RDS
- Auto Scaling based on CPU utilization
- Private subnet internet access via NAT Gateway

---

### 🛠 Services Used ###

- VPC (Custom)

- Public & Private Subnets (Multi-AZ)

- Internet Gateway

 - NAT Gateway

- Application Load Balancer

- EC2 (Amazon Linux 2023)

- Auto Scaling Group

- RDS (MySQL)

- Security Groups

- Session Manager

---

### 🔐 Security Implementation ###

- ALB allows HTTP from Internet

- EC2 allows traffic only from ALB Security Group

- RDS allows MySQL access only from EC2 Security Group

- Database deployed in private subnet
 
- No direct public access to EC2 or RDS

---

### ⚙️ Implementation Steps ###

- Created custom VPC with CIDR 10.0.0.0/16

- Configured 2 public and 4 private subnets across multiple AZs

- Deployed RDS in private DB subnet

- Launched EC2 instances in private subnet

- Configured ALB in public subnet

- Attached Auto Scaling Group with CPU-based scaling policy

- Validated connectivity and database operations

---

### 🧪 Testing & Validation ###

- Verified ALB DNS accessibility

- Confirmed Target Group health checks

- Installed MariaDB client in Amazon Linux 2023

- Tested RDS connectivity via Session Manager

- Performed CRUD operations on database

- Monitored CPU metrics in CloudWatch






