# ERPNext Docker Deployment with GitLab CI

This project automates the deployment of ERPNext using Docker containers through a GitLab CI/CD pipeline. It includes a shell script to SSH into a virtual server and deploy the application. You can also add your custom apps by editing the `apps.json` file.

## Project Structure

The project includes the following files:

- `gitlab-ci.yml`: Defines the GitLab CI/CD pipeline stages and jobs, including security scanning.
- `apps.json`: A JSON file where you can specify the Git repositories and branches for your custom apps.
- `entrypoint.sh`: A shell script for deploying ERPNext on the virtual server.
- `postman_collection.json`: A sample Postman collection for testing APIs.

## GitLab CI/CD Pipeline Stages

The GitLab CI/CD pipeline is divided into the following stages:

1. **Test (SAST and Security Scanning):** This stage includes Static Application Security Testing (SAST) and security scanning.

2. **Deploy ERP:** This stage deploys ERPNext to the virtual server. It uses a Docker image for deployment and SSH into the server.

3. **DAST (Dynamic Application Security Testing):** This stage is dedicated to Dynamic Application Security Testing (DAST) and security scanning.

## Instructions

1. Edit the `apps.json` file to specify the Git repositories and branches for your custom apps.

2. Set up your GitLab project with appropriate environment variables, including `SSH_PRIVATE_KEY` and any others needed for your specific deployment.

3. Customize the scripts (`entrypoint.sh`, `deploy.sh`, and `update_app.sh`) and configuration files as needed for your environment.

4. Configure your GitLab CI/CD pipeline to trigger on code changes or manually start the deployment.

5. Run the pipeline and monitor the progress through the GitLab CI/CD interface.

6. Access your deployed ERPNext instance through the provided link.

## Disclaimer

Please be aware that this is a simplified example, and it may require additional setup and customization to fit your specific deployment needs. Be sure to follow best practices for security and code quality when deploying applications in a production environment.
