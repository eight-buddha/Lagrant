#!/usr/bin/env bash

echo "--- Installing PHP and packages ---"
sudo add-apt-repository ppa:ondrej/php5
sudo apt-get update
sudo apt-get install -y php5-dev php5-cli php-pear php5-curl php5-gd php5-mcrypt php5-readline

# comment out disabled functions for CLI to enable Boris (L4.1 tinker)
sed -i "s/disable_functions/;disable_functions/" /etc/php5/cli/php.ini
