# Chef `include_recipe` Statement

In Chef, the `include_recipe` statement is used to include other recipes within the current recipe. This allows you to modularize your configuration logic and 
reuse common configuration patterns across multiple recipes or cookbooks.

## Usage

You can use `include_recipe` as follows:

```ruby
include_recipe 'cookbook_name::recipe_name'
```
- `cookbook_name`: The name of the cookbook that contains the recipe you want to include.
- `recipe_name`: The name of the recipe you want to include from the specified cookbook.

You typically place `include_recipe` statements at the beginning of your recipe files to declare dependencies and ensure that required configurations are applied in
the correct order.

For example, if you have a cookbook named webserver with a recipe named `default.rb` that sets up a basic web server, and another recipe named `ssl.rb` 
that configures SSL for the web server, you can include the `ssl.rb` recipe within the default.rb recipe like this:

# In webserver/recipes/default.rb
`include_recipe 'webserver::ssl'`

This would ensure that when the `webserver::default` recipe is run, the configurations defined in the `webserver::ssl` recipe are also applied.

By using `include_recipe`, you can organize your configuration logic into smaller, reusable units, making your cookbooks easier to understand, maintain, and share. It also helps in managing dependencies between 
recipes and ensures that configurations are applied consistently across your infrastructure.


