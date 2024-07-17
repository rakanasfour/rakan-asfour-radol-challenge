# Rakan Asfour Radol Challenge

## Project Overview

This project involves building a full-stack application with a backend developed using Node and the Nest framework. The backend utilizes a multi-tier architecture, including  controller, services, repositories, and models. For the database, I created a relational database using MySQL on AWS RDS.

### Database Setup

I connected to MySQL using MySQL Workbench and executed multiple SQL commands to create tables and insert values. The endpoints for the Node.js application were successfully integrated.

### Frontend Development

For the frontend, I chose React.js with Vite. This framework is similar to Next.js but is lightweight and allows all components to run on a single page. The main goal of the frontend is to fetch data from the backend and display it on the home page.

### Project Structure

- The MySQL code is located in the `database` folder.
- The frontend code can be found in the `frontend` directory.
- The backend code is organized in the `backend` folder.

### Containerization

I included a Dockerfile in each service to containerize the application. All Docker images are stored in Amazon Elastic Container Registry (ECR) within my AWS account.

### Infrastructure as Code

I used Terraform to provision resources on AWS, which includes setting up the EKS cluster, ECR, RDS, VPC, and security groups. The Terraform configuration follows a modular structure for better organization and maintainability.

### Deployment

I have implemented deployment services for both the frontend and backend applications, utilizing the latest images from the repository. These services run on EKS Kubernetes cluster, with each deployment configured to instantiate three replicas to ensure high availability and scalability.

All pods are healthy and currently operational within the cluster. You can find the access links in the sections below.

### Access Links


- **Frontend Load Balancer:** [Frontend Load Balancer](http://a739dfd815090464da836cfb429eecf6-1593339861.us-east-2.elb.amazonaws.com/)

- **Backend Endpoint:** [Backend Users Endpoint](http://a19ad1d6e674744f4adee22e44005fac-1610072593.us-east-2.elb.amazonaws.com:3001/users)

- **Database Endpoint:** `inventory-db-aws.cl6qtov8jgu8.us-east-2.rds.amazonaws.com`

### Docker Images

- **Backend Image:** `866934333672.dkr.ecr.us-east-2.amazonaws.com/backend:latest`
- **Frontend Image:** `866934333672.dkr.ecr.us-east-2.amazonaws.com/frontend:latest`
