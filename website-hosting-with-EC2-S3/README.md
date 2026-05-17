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

![Sample Web Page](screen-shots/ec2-user-data-index.html)

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

## 🔹Issue Faced, Resolution & Observed Behavior ##

## 🔄 Auto Scaling Behavior ##

When manually stopping an EC2 instance inside the Auto Scaling Group:

- The stopped instance was terminated

- Desired capacity was maintained

- A new EC2 instance was launched automatically

  <img width="1848" height="906" alt="1-EC2-running" src="https://github.com/user-attachments/assets/a0520a62-5b7c-4802-b027-11b93aec9ee7" />


**Why This Happens?**

Auto Scaling continuously ensures the configured desired capacity.

Stopped or unhealthy instances are automatically replaced.

**To stop all instances safely:**

Edit Auto Scaling Group

Set:

- Minimum = 0

- Desired = 0

- Save changes

---

## ALB returned 502 Bad Gateway ##

ALB returned 502 Bad Gateway, while EC2 Public IP worked.

**🔍 Root Cause:**

Auto Scaling instances were launched without Apache installation because the Launch Template lacked User Data configuration.

Instances were running but not serving HTTP traffic, causing health checks to fail.

**✅ Solution:**

- Updated Launch Template with proper User Data script

- Installed Apache automatically during boot

- Performed Instance Refresh

- Target Group turned Healthy

- ALB started serving traffic successfully

---

# ✅ Final Deployment Status

The web application is successfully deployed and accessible through the Application Load Balancer DNS.

After resolving Auto Scaling and health check issues:

- All EC2 instances are running and healthy
- Target Group status shows Healthy
- Auto Scaling maintains desired capacity
- Application Load Balancer serves traffic successfully
- Website loads correctly in browser via Public IP.

**Website Working in Browser:**

<img width="1860" height="948" alt="8-final-web-site-page1" src="https://github.com/user-attachments/assets/4d500a66-7420-4435-b3ae-01fdc1c9d917" />


---

## 👨‍💻 Author ##

Ashokkumar
DevOps Engineer
