# Amazon EKS Fargate Deployment with AWS Load Balancer Controller

This project demonstrates the deployment of a containerized **2048 Game Application** on **Amazon Elastic Kubernetes Service (EKS)** using **AWS Fargate** for serverless compute and the **AWS Load Balancer Controller** for external traffic management.

The application is deployed using Kubernetes manifests and exposed through an **Application Load Balancer (ALB)** configured via Kubernetes Ingress resources.

---

## Solution Architecture

User Request → AWS ALB → Kubernetes Ingress → Service → Deployment → Application Pod

---

## Technology Stack

- **Amazon EKS**
- **AWS Fargate**
- **Kubernetes**
- **AWS CLI**
- **Helm**
- **AWS Load Balancer Controller**
- **IAM Roles for Service Accounts (IRSA)**
- **Application Load Balancer (ALB)**

---

## Key Implementation Details

- Provisioned an **Amazon EKS cluster** with **AWS Fargate profiles** for serverless pod execution.
- Configured **IAM OIDC provider** and implemented **IAM Roles for Service Accounts (IRSA)** for secure permissions management.
- Created and attached **AWS Load Balancer Controller IAM policies and roles**.
- Installed and configured the **AWS Load Balancer Controller** using Helm.
- Deployed the **2048 Game Application** using Kubernetes resources including:
  - Deployment
  - Service
  - Ingress
- Configured **ALB Ingress** for external traffic routing and application exposure.
- Validated workload deployment and accessibility through ALB DNS.

---

## Repository Structure

```text
.
├── README.md
├── create-eks.md
├── 2048-deploy-ingress.md
├── configure-IAM-alb_controller.md
└── screenshots/

