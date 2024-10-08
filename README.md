# Sock Shop Microservice on Azure Kubernetes Service (AKS)

<p> This repository contains the source code and deployment files for a microservice-based e-commerce application, Sock Shop, hosted on </p>

<p> Azure Kubernetes Service (AKS). Sock Shop is a reference application for demonstrating the usage of microservices in a cloud-native environment.</p>

<p> The Sock Shop application is composed of multiple microservices, each responsible for specific functionality such as the front-end, catalog, user, and order management services. </p>

<p> After I'm done with my terraform configuration file, I do the `terraform plan` command to create a state file and an execution plan for my infrastructure. </p>

![Terraform Plan](<terraform plan.png>)

<p> After this, I input a `terraform apply` command. This allows Azure to use my terraform code to create my infrastructure.</p>

![Terraform Apply](<terraform apply.png>)

<p> I was able to input my yaml file manually using the Azure portal. This shows as my services are up on Azure </p>

![Services](services.png)

<p> Below, my namespaces are up and running. </p>

![Namespaces](<kubernetes namespace.png>)

<p> To access my services, I had to use a port forward command. </p>

![Port Forward](<port forward command.png>)

<p> I go to localhost:3001 after my command to view my sockshop </p>

![Front-End](sock.png)#
