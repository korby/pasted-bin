#!/bin/bash
#
# Installe srdb sur le serveur à containers
#
mkdir srdb
cd srdb
wget https://raw.githubusercontent.com/interconnectit/Search-Replace-DB/master/srdb.class.php
wget https://raw.githubusercontent.com/interconnectit/Search-Replace-DB/master/srdb.cli.php
sed -i "s/<?php/<?php\nerror_reporting(E_ERROR);/" srdb.cli.php
chmod +x srdb.cli.php
