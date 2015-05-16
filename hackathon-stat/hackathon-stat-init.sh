#!/bin/sh
set -e
if [ -e /.hackathon-stat-initialized ]; then
    exit 0
fi

mysql -h mysql -u hackathon --password=hackathonpassword hackathon < /var/www/project/init/dbinit.sql

touch /.hackathon-stat-initialized
