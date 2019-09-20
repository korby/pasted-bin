#!/bin/bash
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
echo "alias wp-cli='$(pwd)/wp-cli.phar'" ~/.bashrc
. ~/.bashrc
