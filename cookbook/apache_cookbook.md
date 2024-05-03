## 1. Create a New cookbook
 ``` chef generate cookbook apache-cookbook```

  ![35](https://github.com/vivek2431/Chef/assets/137812531/2a0bbedf-2f4e-44c2-ab35-1859a363b885)

  ![36](https://github.com/vivek2431/Chef/assets/137812531/aa6fa63f-1872-43f7-a7b6-6755fbcc6a9f)

- create a new recipe in apache cookbook
  ``` chef generate recipe apache-recipe```

 ![37](https://github.com/vivek2431/Chef/assets/137812531/46b264b7-391b-4f90-95f1-53a13074f98a)

![38](https://github.com/vivek2431/Chef/assets/137812531/528868b2-c1b1-474e-aeb7-43a9d751f93f)


## 2. Navigate to Your Cookbook Directory

- Once connected to your EC2 instance, navigate to the directory where your cookbook is located. For example:
  ``` cd cookbook```
-  ### Edit the File
  Use a text editor like Vi to edit the file. For example, to edit a recipe file named default.rb, you can use:
  
  ```vi apache-cookbook/recipes/apache-recipe.rb```

   ![39](https://github.com/vivek2431/Chef/assets/137812531/28b2d647-7e09-47a2-89eb-3cec1f9520b0)
   

  ## 3. Make Changes
- Use Vi commands to navigate and edit the file. Once you've made your changes, save the file and exit Vim. You can do this by pressing Esc to exit insert mode, 
 then typing :wq and pressing Enter.

  ![40](https://github.com/vivek2431/Chef/assets/137812531/49f64410-7f29-402b-a43e-fa9473a010d5)

- Check Syntax by using command:

   ```chef spec ruby -c apache-cookbook/recipes/apache-recipe.rb```

   ![41](https://github.com/vivek2431/Chef/assets/137812531/43dfd0a0-d1b8-49f2-aa0f-2da9e0f286d1)

## 4. Execute the Cookbook (if needed)
 If you've made significant changes to the cookbook and want to apply them, you can run the cookbook using the chef-client command. For example:

  ``` chef-client -zr "recipe[apache-cookbook::apache-recipe]"```
  
   ![42](https://github.com/vivek2431/Chef/assets/137812531/0fa4e788-f922-4cb3-9538-793096684a53)

   ![43](https://github.com/vivek2431/Chef/assets/137812531/6ec0940e-747d-4cd8-ab30-8e3a8d643472)

## 5.  Verify the Results
Once the Chef client finishes running, verify that your changes have been applied as expected.

Remember to use caution when editing files on production systems, and always back up important files before making changes. Additionally, ensure that your changes adhere to best practices and do not 
introduce security vulnerabilities or other issues.

 ![44](https://github.com/vivek2431/Chef/assets/137812531/fe99ffd0-6057-4281-86ef-6ae02ace2a8b)

 ![46](https://github.com/vivek2431/Chef/assets/137812531/4687c42f-a94f-4a52-8862-0bc6673b6d8b)







