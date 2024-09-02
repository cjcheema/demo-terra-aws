# Demo Terraform AWS Deployment

This repository contains a Terraform configuration to provision a Linux instance in AWS, designed for testing a CI/CD pipeline workflow using GitHub Actions.

## Overview

This repository demonstrates how to automate the deployment of infrastructure on AWS using Terraform, with GitHub Actions handling the entire process. The Terraform configuration here is executed directly in the GitHub environment, meaning you don't need to install Terraform locally.

## Prerequisites

- **GitHub Actions** is set up in this repository. No local installation of Terraform or AWS CLI is required.

## Usage

1. **Fork this repository** to your GitHub account.

2. **Set up AWS credentials** in your GitHub repository secrets:

   - Go to your repository on GitHub.
   - Click on **Settings** > **Secrets and variables** > **Actions**.
   - Click **New repository secret** and add your AWS access key as `AWS_ACCESS_KEY_ID` and secret key as `AWS_SECRET_ACCESS_KEY`.

3. **Trigger the GitHub Actions workflow**:

   - The workflow will automatically run whenever you push changes to the repository.
   - To manually trigger the workflow, go to the **Actions** tab, select the Terraform workflow, and click **Run workflow**.

4. **Monitor the workflow**:

   - Navigate to the **Actions** tab in your GitHub repository to see the progress of the Terraform apply and destroy actions.


## CI/CD Workflow with GitHub Actions

The `.github/workflows/terraform.yml` file in this repository contains the GitHub Actions workflow definition. It automates the process of running `terraform plan` and `terraform apply` based on changes pushed to the repository, ensuring that your infrastructure is always up to date with the latest configuration.

## Read more

Check out my article to learn how to Automating AWS Infrastructure Provisioning in Your CI/CD Pipeline with Terraform and GitHub Actions:
https://www.cjcheema.com/2024/07/07/automating-aws-infrastructure-provisioning-in-your-ci-cd-pipeline-with-terraform-and-github-actions/

## Contributing

Feel free to submit issues or pull requests if you have suggestions or improvements.

## Author

### Name: Charanjit Singh
### Email: charanjit.singh@outlook.in / webmaster@cjcheema.com
