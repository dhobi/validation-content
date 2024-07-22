#!/bin/bash

#prepare wordpress installation
cp config-sample-docker.json config.json
mkdir -p wordpress/wp-content
wget https://downloads.wordpress.org/theme/twentytwelve.4.3.zip -O /tmp/twentytwelve.4.3.zip && unzip /tmp/twentytwelve.4.3.zip -d wordpress/wp-content/themes && rm -f /tmp/twentytwelve.4.3.zip
sudo git clone https://github.com/jzaefferer/validation-theme wordpress/wp-content/themes/validation-theme
mkdir -p wordpress/wp-content/plugins/gilded-wordpress && wget https://raw.githubusercontent.com/scottgonzalez/gilded-wordpress/v1.0.0/gilded-wordpress.php -O wordpress/wp-content/plugins/gilded-wordpress/gilded-wordpress.php
mkdir -p wordpress/wp-content/plugins/jquery-static-index && wget https://raw.githubusercontent.com/jquery/jquery-wp-content/v4.0.1/plugins/jquery-static-index.php -O wordpress/wp-content/plugins/jquery-static-index/jquery-static-index.php

# setup additional dependencies here (would features be a better place?)
sudo apt-get update && sudo apt-get install libxml2-utils libxslt1.1 xsltproc -y

# setup grunt globally
npm install -g grunt-cli

# install local dependencies
npm install