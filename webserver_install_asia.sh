#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo service httpd start
sudo chkconfig httpd on
echo "<h1>Yo Asia</h1>" | sudo tee /var/www/html/index.html