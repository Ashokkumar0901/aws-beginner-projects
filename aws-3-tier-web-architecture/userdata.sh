#!/bin/bash
dnf update -y
dnf install -y httpd php php-mysqlnd mariadb105
systemctl start httpd
systemctl enable httpd
echo "<?php phpinfo(); ?>" > /var/www/html/index.php
