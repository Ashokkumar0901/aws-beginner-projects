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

## 🏗 Architecture ##


<img width="677" height="519" alt="aws-high-availability-3-tier-architecture" src="https://github.com/user-attachments/assets/5f1e21f9-10f7-4b31-8dba-c23d001a2b48" />

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

---


## 📸 Screenshots

**VPC & Subnets:**
<img width="1851" height="902" alt="1-VPC" src="https://github.com/user-attachments/assets/ddce8f9c-5b11-4712-9573-bd1d69887abd" />


**Security Groups:**
<img width="1852" height="910" alt="2-Security-groups" src="https://github.com/user-attachments/assets/8f441837-1dc9-4a9e-8b38-b087e7bf4af0" />


**ALB & Target Group (Healthy instances):**
<img width="1852" height="913" alt="4-Target-group" src="https://github.com/user-attachments/assets/cebb607e-8c6a-4482-852a-eb857185e829" />


**Auto Scaling Group:**
<img width="1852" height="900" alt="5-Auto-scaling-group" src="https://github.com/user-attachments/assets/afee4c42-e4a0-463d-8852-f88bc6496916" />


**RDS:**
<img width="1848" height="903" alt="6-RDS-database" src="https://github.com/user-attachments/assets/b8cf51b7-8ba2-4eae-b552-e0bdda5d11f1" />


**Browser output via ALB DNS:**
<img width="1842" height="957" alt="Final-web-page" src="https://github.com/user-attachments/assets/7596af3e-bf56-4efa-80ba-014246f119d2" />


---

## 📈 Key Learnings

- Designing secure network segmentation in AWS
- Implementing high availability across AZs
- Configuring Auto Scaling and health checks
- Troubleshooting package installation in Amazon Linux 2023
- Validating database connectivity in private architecture

---

## 👨‍💻 Author

**Ashokkumar**  
Aspiring Cloud Engineer | AWS Enthusiast  

