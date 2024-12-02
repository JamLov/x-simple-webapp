#!/bin/bash

# Get MySQL credentials from environment variables
MYSQL_USER=${MYSQL_USER} 
MYSQL_PASSWORD=${MYSQL_PASSWORD} 

while ! mysqladmin ping -h mysql -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" --silent; do
    echo "Waiting for MySQL..."
    sleep 1
done

echo "MySQL is ready!"

exit 0