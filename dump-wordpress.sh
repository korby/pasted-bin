#!/bin/bash
settings=./wp-config.php
host=$(egrep "^[^/].*('|\")DB_HOST('|\")(,)+" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
db=$(egrep "^[^/].*('|\")DB_NAME('|\")(,)+" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
usr=$(egrep "^[^/].*('|\")DB_USER('|\")(,)+" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
pass=$(egrep "^[^/].*('|\")DB_PASSWORD('|\")(,)+" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
echo "password: "$pass
echo "mysqldump -h $host -u $usr -p $db > $db-$(date '+%Y-%m-%d_%H-%M-%S').sql"
