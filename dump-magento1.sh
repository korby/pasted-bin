#!/bin/bash
path_1="current/app/etc/local.xml"
path_2="app/etc/local.xml"
path_3="etc/local.xml"
if [ -f "$path_1" ]; then settings=$path_1; fi
if [ -f "$path_2" ]; then settings=$path_2; fi
if [ -f "$path_3" ]; then settings=$path_3; fi
if [ "$settings" == "" ]; then echo "No configuration file found"; exit 1; fi
host=$(grep -A 8 "<connection" app/etc/local.xml |grep host |cut -d "[" -f3 | cut -d "]" -f1)
db=$(grep -A 8 "<connection" app/etc/local.xml |grep dbname |cut -d "[" -f3 | cut -d "]" -f1)
usr=$(grep -A 8 "<connection" app/etc/local.xml |grep username |cut -d "[" -f3 | cut -d "]" -f1)
pass=$(grep -A 8 "<connection" app/etc/local.xml |grep password |cut -d "[" -f3 | cut -d "]" -f1)
echo "password: "$pass
echo "mysqldump -h $host -u $usr -p $db > $db-$(date '+%Y-%m-%d_%H-%M-%S').sql"
