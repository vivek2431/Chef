# Chef Attributes

In Chef, attributes are variables used to customize the behavior of recipes without modifying the recipe code itself. They provide a way to parameterize 
your cookbook and make it more reusable and flexible. Attributes can be defined at different levels within Chef:

## 1. Default Attributes

Default attributes are the default values for attributes defined in your cookbook. They are typically set in the cookbook's `attributes/default.rb` file. Default attributes are used when no other level of precedence overrides them.

Example of setting a default attribute:

```ruby
default['apache']['port'] = 80
```

## 2. Override Attributes
Override attributes are attributes that override the default values and are typically set in a higher-level scope such as a role, environment, or node. They take precedence over default attributes.

Example of setting an override attribute in a role:
```
override_attributes({
  'apache' => {
    'port' => 8080
  }
})
```
## 3. Automatic Attributes
Automatic attributes are attributes that are automatically collected by Ohai, a tool that collects system configuration data, and made available to Chef recipes. Examples include information about the platform, hardware, and network.

Example of using an automatic attribute in a recipe:
```
log "Hostname is: #{node['hostname']}"
```
Attributes can be accessed within Chef recipes using the node object, followed by the attribute's name. For example, node['apache']['port'] would access the
value of the port attribute defined in the apache cookbook. By leveraging attributes, you can make your Chef cookbooks more dynamic and adaptable to different environments and use cases. 
They allow you to abstract configuration details from your recipes, making them easier to manage and maintain.
