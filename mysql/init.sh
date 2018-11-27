#!/bin/bash
mysql_install_db --user=mysql
sleep 5
mysqld_safe &
sleep 5
mysql -e "use mysql; grant all privileges on *.* to '$ADMIN_USER'@'%' identified by '$ADMIN_PASS' with grant option;"
h=$(hostname)
mysql -e "use mysql; UPDATE user SET password=PASSWORD('$ADMIN_PASS') WHERE USER='$ADMIN_USER' and host='$h';"
mysql -e "flush privileges;"
