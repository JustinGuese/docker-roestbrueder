#!/bin/bash
# setup
mkdir -p letsencrypt src/wordpress/data src/wordpress/sql
aws s3 sync s3://datafortress-frankfurt/roestbrueder src/
