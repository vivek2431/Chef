# Chef Bootstrapping Creation and Execution on AWS EC2 Linux Instance

This guide outlines the steps to create and execute a Chef cookbook on an AWS EC2 Linux instance.

## 1. Setting Up AWS EC2 Instance

- Log in to your AWS Management Console.
- Launch an EC2 instance with a Linux operating system of your choice (e.g., Amazon Linux, Ubuntu, CentOS).
- Ensure that the instance has internet access and proper security group settings to allow connections.

  ![1](https://github.com/vivek2431/Chef/assets/137812531/ac56c30d-af96-4121-a7f4-d1558393ec0b)

## 2. Connecting to EC2 Instance

- Use SSH to connect to your EC2 instance. You will need the key pair you created during the instance launch.
  Example:

 ![3](https://github.com/vivek2431/Chef/assets/137812531/85e25c4b-79ad-457c-8c9d-2ddccd7fd735)

 ![4](https://github.com/vivek2431/Chef/assets/137812531/7b43ff52-60a1-4bd9-97bd-27db5d6d98f6)

# Creating a Chef Organization

## Sign Up/Login to Chef

Visit the official [Chef website](https://www.chef.io/) and sign up for an account if you don't have one. If you already have an account, log in.

 ![5](https://github.com/vivek2431/Chef/assets/137812531/77d55ce9-363e-436a-b7b2-89c1b9d61bf9)

 ![6](https://github.com/vivek2431/Chef/assets/137812531/514eb599-838b-4ce4-a4b2-a2217bec9e8c)

 ![7](https://github.com/vivek2431/Chef/assets/137812531/41dc674c-0cf3-41ca-bdc8-456b1f73ad7b)

## Navigate to Organizations

Once logged in, navigate to the organizations section of the Chef website. This is usually found in the account settings or dashboard.

 ![8](https://github.com/vivek2431/Chef/assets/137812531/692a3307-2830-40c2-a14d-4efec2197561)

## Create a New Organization

In the organizations section, there should be an option to create a new organization. Click on this and provide the necessary details such as organization name, description, and billing information
if required.

 ![9](https://github.com/vivek2431/Chef/assets/137812531/88b4baad-a256-4bab-bacb-3e79cc11480c)


## Download the chef starter kit and extract it to local device:

 ![10](https://github.com/vivek2431/Chef/assets/137812531/6f80ee9a-c723-4d47-9147-7d8e55c23da8)

 ![11](https://github.com/vivek2431/Chef/assets/137812531/99a9ce8e-42ac-49b5-bbd0-7cdaf7cc23d3)

 ![13](https://github.com/vivek2431/Chef/assets/137812531/088bf80a-4730-43ec-98ad-6f36ba1ef231)

# Using WinSCP Application in AWS Linux Instance

## Install WinSCP

Download and install [WinSCP](https://winscp.net/eng/download.php) on your Windows machine.

 ![14](https://github.com/vivek2431/Chef/assets/137812531/bf0586d3-6110-4a53-9883-f70382abe03f)

 ![15](https://github.com/vivek2431/Chef/assets/137812531/2d1fdd49-c17f-404a-b130-e8e0c9654a5a)

## Connect to AWS Linux Instance

Open WinSCP and create a new session. Enter the hostname or IP address of your AWS Linux instance, along with the username (usually `ec2-user` for AWS Linux), 
and ensure SSH protocol is selected.

 ![16](https://github.com/vivek2431/Chef/assets/137812531/fbd6f8c8-7792-48ff-8b25-2a0d4de7630d)

## Configure SSH Key Authentication

In WinSCP, configure SSH key authentication by specifying the private key associated with your AWS Linux instance. You can do this in the 
session settings under the "Authentication" section.

![17](https://github.com/vivek2431/Chef/assets/137812531/96161918-4f57-47d8-8356-53524be791fd)

## Transfer Files

Once connected, you can transfer files between your local machine and the AWS Linux instance by dragging and dropping them in the 
WinSCP interface.

 ![18](https://github.com/vivek2431/Chef/assets/137812531/2c605267-1976-4948-8427-bf96d27fcb51)

 ![19](https://github.com/vivek2431/Chef/assets/137812531/2786ea32-6860-4430-ae12-a9be669423be)

## Manage Files
You can also manage files on the AWS Linux instance directly from WinSCP, including editing, deleting, and creating new files and directories.
Using WinSCP provides a convenient way to transfer files between your Windows machine and an AWS Linux instance over SSH. Make sure to properly
configure authentication and permissions to ensure secure file transfer.

## After completing the file transfer to the linux instance, check the file list in chef workstation by using command:

- Switch to the root user by `sudo su` command.
- To check the list use `ls` command.

  ![20](https://github.com/vivek2431/Chef/assets/137812531/1982c1e7-7543-4308-aeb6-db34eeced6d0)

  Now, we have to go to the `chef.rb` to check the verification status of the file that we have transfered from the WinSCP.

   ![22](https://github.com/vivek2431/Chef/assets/137812531/65b247b0-39a3-4ffe-81cb-efd6af234521)

   ![23](https://github.com/vivek2431/Chef/assets/137812531/c7d8c80c-6afa-4b5d-a6b5-e39fcdc91d4b)

  






