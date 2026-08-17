# 🚀 Scalable Web Application on AWS
## 📌 Project Overview

This project demonstrates the design and deployment of a highly available, scalable, and production-style web application using core AWS services.

The architecture ensures:

- High availability

- Automatic scaling

- Load balancing

- Secure networking

- Self-healing infrastructure
  
- Separation of static and compute resources

  ---

##  🏗 Architecture
### 🔁 Architecture Flow
User → Application Load Balancer → EC2 (Auto Scaling Group)  

EC2 → Amazon S3 (Static Files)  

IAM → Secure Role-Based Access  

VPC → Public & Private Subnets  

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

  <img width="1842" height="902" alt="7-vpc-architecture" src="https://github.com/user-attachments/assets/d7c84c35-ac93-4bcd-a809-a6375e18e1c8" />


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


**Purpose:**

Demonstrates Linux server setup and EC2 provisioning.

---

## 🔹 Step 3: Store Static Files in S3 ##

Static content (CSS) was stored in Amazon S3.

**Actions:**

- Created S3 bucket

- Uploaded CSS

- Configured controlled public access

- Referenced S3 object URLs in HTML

**Purpose:**

Shows separation of compute and storage layers and security awareness.  

---

## 🔹 Step 4: Configure Application Load Balancer ##

An internet-facing Application Load Balancer was created.

**Configuration:**

- Attached to public subnets

- Target Group created for EC2 instances

- Health Check Path: /

- Listener: HTTP (Port 80)

**Purpose:**

Distributes traffic across multiple instances and enables high availability.

---

## 🔹 Step 5: Enable Auto Scaling ##

An Auto Scaling Group was configured to handle dynamic traffic.

**Configuration:**

- Minimum: 1

- Desired: 2

- Maximum: 3

Scaling Policy: Scale out when CPU > 70%

Health Check Type: ELB

**Purpose:**

Ensures scalability and cost efficiency.

---

## 🔹 Step 7: IAM Security ##

IAM role attached to EC2 instances with:

- S3 Read Access

- CloudWatch Access

Followed Principle of Least Privilege.


---

**Website Working in Browser:**

<img width="1860" height="948" alt="8-final-web-site-page1" src="https://github.com/user-attachments/assets/4d500a66-7420-4435-b3ae-01fdc1c9d917" />
