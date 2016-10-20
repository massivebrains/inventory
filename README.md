# inventory
Basic Inventory App - A task by Devcenter.io

<h2>How to install</h2>
1. Create a database `inventory` and import the inventory.sql file in the /
2. navigate to /app/config/config.php and change line 26 which is 
  $config['base_url'] = 'http://localhost/inventory'; to where you installed the appliaction. if its installed in the root of your local server. leave unchanged.
  
 3. navigate to /app/config/database.php and modify the $db['default'] array as appropriate.
 4. point your browser to [server]/inventory

