# ansible-nginx
This is an example of how ansible can be used to install and configure nginx serving an application

Ansible Tasks
-------------
nginx_install: 
This file contains the ansible tasks to install nginx on a ubuntu server using apt and then start it

nginx_configure: 
This file contains the ansible tasks to update the default configuration files for nginx. Here nginx acts as a reverse proxy, load balancer and allows for fastcgi on the application. The ansible file also contains task to copy the default static content, this page can be displayed for all invalid requests. There is a task to run a test for verification of the updated nginx configuration. Finally there is a task to restart nginx.

Ansible Inventory
-----------------
The inventory of servers is stored under ansible-inventory/inventory.cfg, it should be updated to include the IP address of the server where nginx needs to be installed and configured.

Build
-----
The build folder contains a shell script to run the two ansible playbooks