# Chef Attribute Creation and Execution on AWS EC2 Linux Instance

This guide outlines the steps to create and execute a Chef attribute on an AWS EC2 Linux instance.


## 1. Setting Up AWS EC2 Instance

- Log in to your AWS Management Console.
- Launch an EC2 instance with a Linux operating system of your choice (e.g., Amazon Linux, Ubuntu, CentOS).
- Ensure that the instance has internet access and proper security group settings to allow connections.

## 2. Connecting to EC2 Instance

- Use SSH to connect to your EC2 instance. You will need the key pair you created during the instance launch.
  Example:

  ![1](https://github.com/vivek2431/Chef/assets/137812531/27b40eb3-09fd-4a0a-bf82-260ace246c65)

## 3. Ohai Commands for AWS EC2 Instances

Ohai is a tool used in Chef to collect system configuration data from nodes. When running on an AWS EC2 instance, Ohai collects information about the instance's attributes such as instance ID, instance type, region, public IP address, private IP address, and more. Here are some common Ohai commands you can use on an AWS EC2 instance:

1. **ohai**: Running the `ohai` command without any arguments will display all the attributes Ohai has collected.

2. **ohai platform**: This command specifically displays information about the platform, including the distribution, version, and kernel details.

3. **ohai ec2**: This command displays EC2-specific attributes such as instance ID, instance type, availability zone, public IP address, private IP address,
4. and more.

5. **ohai ipaddress**: This command displays only the IP addresses associated with the instance.

6. **ohai hostname**: This command displays the hostname of the instance.

7. **ohai fqdn**: This command displays the fully qualified domain name (FQDN) of the instance.

These commands can be useful for understanding the environment and gathering information about the EC2 instance, which can then be used in your Chef recipes
for configuration management.

   ![2](https://github.com/vivek2431/Chef/assets/137812531/4c885d56-510f-4080-997c-a716ae8b1b76)

## 4. Create a Cookbook and generate a recipe: 

- As we havd already made the cookbook, so we are going to work directly on the cookbook directory
- Generate a new recipe by the name of (recipe3) by using command:

   ``` chef generate recipe recipe3 ```
  
   ![3](https://github.com/vivek2431/Chef/assets/137812531/eb9a34ec-7d94-417e-873f-2481250ea2e2)

   ![4](https://github.com/vivek2431/Chef/assets/137812531/8188169c-c4a1-4040-8626-c0797abe55ec)

## 5. Navigate to Your Cookbook Directory

- Once connected to your EC2 instance, navigate to the directory where your cookbook is located. For example:
  ``` cd cookbook```
-  ### Edit the File
  Use a text editor like Vi to edit the file. For example, to edit a recipe file named default.rb, you can use:
  
  ```vi apache-cookbook/recipes/recipe3.rb```

   ![5](https://github.com/vivek2431/Chef/assets/137812531/86c8f3a8-5e9b-4435-a751-79431710c355)

   ![6](https://github.com/vivek2431/Chef/assets/137812531/1ce232f5-7c0b-4849-89ce-d49d29ea1ead)

 - Execute the Cookbook (if needed)
 If you've made significant changes to the cookbook and want to apply them, you can run the cookbook using the chef-client command. For example:

  ``` chef-client -zr "recipe[apache-cookbook::recipe3]"```

   ![7](https://github.com/vivek2431/Chef/assets/137812531/ec2625c2-9633-4fee-85e2-2031b4bca6ab)

 ## 7. Verify the Results
Once the Chef client finishes running, verify that your changes have been applied as expected.

Remember to use caution when editing files on production systems, and always back up important files before making changes. Additionally, ensure that your changes adhere to best practices and do not 
introduce security vulnerabilities or other issues.

   ![8](https://github.com/vivek2431/Chef/assets/137812531/cbbb1f2c-4abb-4f58-8bf3-9fe91a3916b0)

   ![9](https://github.com/vivek2431/Chef/assets/137812531/35b338c6-7e73-4e2b-8055-26fa328d51a8)






  


  

  

