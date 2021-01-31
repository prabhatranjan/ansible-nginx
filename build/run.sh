 #!/bin/bash
clear
echo "Running ansible playbook for nginx installation"
ansible-playbook -i inventory.cfg -u ubuntu --private-key xyz.pem nginx_install.yml
echo "Running ansible playbook to configure nginx"
ansible-playbook -i inventory.cfg -u ubuntu --private-key xyz.pem nginx_configure.yml
echo "Build Complete"