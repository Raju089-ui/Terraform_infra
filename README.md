# Terraform_infra
Infrastructure as Code (IaC) repository using Terraform to provision and manage Azure cloud resources. Includes modular, reusable Terraform code for virtual machines, networking, and scalable cloud infrastructure following DevOps best practices.

###
 What this pipeline delivers:
 ✅ Fully modular Terraform architecture
 ✅ SonarCloud code quality & security scanning
 ✅ Dedicated IaC scanning stage
 ✅ Pre-deployment safety checks
 ✅ Manual validation gate for controlled infra changes
 ✅ YAML-driven Azure DevOps CI pipeline
📦 Terraform Modules Implemented (Reusable & Independent):
 🔹 RG – Resource Group
 🔹 vnet / subnet (via associations)
 🔹 nsg – Network Security Group
 🔹 nsgassociation – NSG to subnet/NIC mapping
 🔹 pip – Public IP
 🔹 loadbalancer – Azure Load Balancer
 🔹 appgateway – Application Gateway
 🔹 backpoolassociation – Backend pool mapping
 🔹 vm – Virtual Machines
 🔹 bastion – Secure Bastion access
 🔹 appassociationvm – App ↔ VM association
📂 Repo Design Highlights:
 ✔ Clear separation of modules and environment
 ✔ Scalable for multi-environment deployments
 ✔ Easy to extend for AKS / Monitoring / FinOps
 ✔ Matches real enterprise DevOps standards
📊 Pipeline Stages:
 🔹 Scanning
 🔹 IaC Scanning
 🔹 Pre-Deployment
 🔹 Validation
