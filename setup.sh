#!/bin/bash
# setup
mkdir -p letsencrypt src/wordpress/data src/wordpress/sql
aws s3 sync s3://datafortress-frankfurt/roestbrueder src/wordpress
find src/wordpress/ -type d -exec chmod 755 {} \;  # Change directory permissions rwxr-xr-x
find src/wordpress/ -type f -exec chmod 644 {} \;  # Change file permissions rw-r--r--
