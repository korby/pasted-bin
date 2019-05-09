#!/bin/bash
settings=./sites/default/settings.env.php
host=$(grep "'host'" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
db=$(grep database $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
usr=$(grep username $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
pass=$(grep password $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
echo $pwd
echo "mysqldump -h $host -u $usr -p $db > db-$(date '+%Y-%m-%d_%H-%M-%S').sql "
