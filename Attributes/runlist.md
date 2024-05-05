# Chef Run List

## Overview

In Chef, the run list is an ordered list of recipes and/or roles that define what should be applied to a node when the Chef client runs. The Chef client uses the run list to determine which recipes and roles to apply, and in what order.

## Syntax

The run list is typically defined in JSON format and specified in a Chef environment or node configuration. It follows this basic structure:

```json
{
  "run_list": [
    "recipe[cookbook_name::recipe_name]",
    "role[role_name]"
  ]
}
```

- `"recipe[cookbook_name::recipe_name]"`: Specifies a recipe from a cookbook to be applied.
- `"role[role_name]"`: Specifies a role to be applied. Roles can contain multiple recipes and other configurations.

## Example
Here's an example of a run list JSON configuration:

```
{
  "run_list": [
    "recipe[apache2]",
    "recipe[mysql::server]",
    "role[webserver]"
  ]
}
```
In this example, the run list includes the `apache2` and `mysql::server recipe`s, as well as the webserver role.

## Usage
To apply the run list to a node, you can configure it in the node's JSON file or specify it during node bootstrap using the knife bootstrap command.

``knife bootstrap <node_ip> --ssh-user <username> --sudo --node-name <node_name> --run-list "recipe[apache2],recipe[mysql::server],role[webserver]"``

Replace `<node_ip>`, `<username>`, and `<node_name>` with the appropriate values for your environment.

By defining a run list, you can control which configurations are applied to each node in your infrastructure, making it easier to manage and maintain your Chef-managed systems.
