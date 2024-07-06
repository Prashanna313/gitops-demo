# Terraform GitOps Demonstration

## Overview
This repository demonstrates a push-based GitOps workflow using Terraform to manage AWS infrastructure. The repository is structured to showcase how changes pushed to the master branch can trigger automated deployments to an AWS environment using Terraform.

## What is GitOps?
GitOps is a modern approach to continuous delivery where the desired state of the system is described declaratively and version-controlled in Git. This approach allows for automated and auditable system management. There are two primary models of GitOps workflows:

### Push-Based GitOps
In a push-based GitOps workflow, changes to the infrastructure are triggered by pushing updates to the Git repository. These changes are then automatically applied to the environment using CI/CD pipelines, such as GitHub Actions. This model is suitable for environments where you want immediate deployment of changes once they are committed to the main branch.

### Pull-Based GitOps
In a pull-based GitOps workflow, an agent continuously monitors the Git repository for changes. When a change is detected, the agent pulls the updates and applies them to the environment. This model is commonly used in Kubernetes environments with tools like ArgoCD and Flux, providing continuous reconciliation of the desired state.

## Prerequisites
Before you begin, ensure you have the following installed:
- [Terraform](https://www.terraform.io/downloads.html) (v1.9.1)
- [AWS CLI](https://aws.amazon.com/cli/)
- [Git](https://git-scm.com/)
- An AWS account with appropriate permissions

## GitHub Actions Workflows
### Push-Based Deployment Workflow
The repository includes a GitHub Actions workflow (.github/workflows/main.yml) that automates the Terraform deployment. The workflow is triggered on pushes to the main branch and performs the following steps:

- Checkout the repository
- Setup Terraform
- Run tfsec for security analysis
- Run tflint for linting and best practices
- Initialize Terraform
- execute the Plan
- Apply Terraform configuration
### PR Checks Workflow
To ensure code quality and security, the repository includes a PR checks workflow (.github/workflows/pr-checks.yml). This workflow runs on pull request creation and updates, and it performs the following steps:

- Checkout the repository
- Setup Terraform
- Run tfsec for security analysis
- Run tflint for linting and best practices
- Validate Terraform syntax
- Executes the resource plan

## Acknowledgments
Special thanks to the Terraform and GitHub Actions communities for their comprehensive documentation and examples.