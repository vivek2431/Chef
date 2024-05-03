# Chef Cookbook Creation and Execution on AWS EC2 Linux Instance

This guide outlines the steps to create and execute a Chef cookbook on an AWS EC2 Linux instance.

## 1. Setting Up AWS EC2 Instance

- Log in to your AWS Management Console.
- Launch an EC2 instance with a Linux operating system of your choice (e.g., Amazon Linux, Ubuntu, CentOS).
- Ensure that the instance has internet access and proper security group settings to allow connections.

## 2. Connecting to EC2 Instance

- Use SSH to connect to your EC2 instance. You will need the key pair you created during the instance launch.
  Example:

  ![9](https://github.com/vivek2431/Chef/assets/137812531/bc3d2e87-4ef3-465c-aa13-88dd63ddc865)


## 3. Installing Chef Client

- Before you can use Chef, you need to install the Chef client on your EC2 instance.
- Download and install Chef client using the following commands:
  ```
     wget https://packages.chef.io/files/stable/chef-workstation/21.9.664/el/7/chef-workstation-21.9.664-1.el7.x86_64.rpm
     ```
   ![16](https://github.com/vivek2431/Chef/assets/137812531/56d8746b-891a-4635-8eb7-00beec6a285a)

   ![17](https://github.com/vivek2431/Chef/assets/137812531/2b2bcc98-35ef-4bd8-ae71-a44240f7aed5)

   ![18](https://github.com/vivek2431/Chef/assets/137812531/ebe53bde-6c4d-4d97-8a27-b92b316275fd)

   ![19](https://github.com/vivek2431/Chef/assets/137812531/6676defa-47d2-4ad1-b79e-51d207d64f23)

   ![20](https://github.com/vivek2431/Chef/assets/137812531/35fbf10b-6beb-470a-a98c-33408aabd4ee)
 
## 4. Creating a Cookbook

- Create a new directory for your Chef cookbook:

   ![21](https://github.com/vivek2431/Chef/assets/137812531/3a778862-e121-4aeb-901f-ef4e5e351770)

- Generate a new cookbook:

   ![22](https://github.com/vivek2431/Chef/assets/137812531/3045f9ed-b15e-4ba6-895a-babebce9f78d)

   ![23](https://github.com/vivek2431/Chef/assets/137812531/6b0b2e31-2e8c-46bb-b60f-8bd27d20ab81)

## 5. Navigate to Your Cookbook Directory

- Once connected to your EC2 instance, navigate to the directory where your cookbook is located. For example:
  ``` cd cookbook```
-  ### Edit the File
  Use a text editor like Vi to edit the file. For example, to edit a recipe file named default.rb, you can use:
  
  ```vi test-cookbook/recipes/test-recipe.rb```

   ![24](https://github.com/vivek2431/Chef/assets/137812531/609b28cd-1ca0-4bb9-96bd-dce391ffa904)


## 6. Make Changes
- Use Vi commands to navigate and edit the file. Once you've made your changes, save the file and exit Vim. You can do this by pressing Esc to exit insert mode, 
then typing :wq and pressing Enter.

 ![25](https://github.com/vivek2431/Chef/assets/137812531/f18ac7fb-052a-43c6-b1a5-e9436f2be409)

- Check Syntax by using command:

   ```chef spec ruby -c test-cookbook/recipes/test-recipe.rb```

   ![26](https://github.com/vivek2431/Chef/assets/137812531/aed9bc68-1ce0-49b1-9222-91c61bbc5868)

- Execute the Cookbook (if needed)
 If you've made significant changes to the cookbook and want to apply them, you can run the cookbook using the chef-client command. For example:

  ``` chef-client -zr "recipe[test-cookbook::test-recipe]"```

   ![27](https://github.com/vivek2431/Chef/assets/137812531/ea0d62a5-ed0c-4192-b11c-a7f60da51bb7)

 ## 7. Verify the Results
Once the Chef client finishes running, verify that your changes have been applied as expected.

Remember to use caution when editing files on production systems, and always back up important files before making changes. Additionally, ensure that your changes adhere to best practices and do not 
introduce security vulnerabilities or other issues.

 ![28](https://github.com/vivek2431/Chef/assets/137812531/24cd99b5-2e1d-4d06-af9e-4e68d7c2c4e3)

 ![29](https://github.com/vivek2431/Chef/assets/137812531/7115b4e2-0f6b-4f15-904c-50ae04b5145b)


   













