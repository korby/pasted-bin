#!/bin/bash
path_1="current/web/sites/default/settings.env.php"
path_2="web/sites/default/settings.env.php"
path_3="sites/default/settings.env.php"
if [ -f "$path_1" ]; then settings=$path_1; fi
if [ -f "$path_2" ]; then settings=$path_2; fi
if [ -f "$path_3" ]; then settings=$path_3; fi
host=$(egrep "('|\")host('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
db=$(egrep "('|\")database('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
usr=$(egrep "('|\")username('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
pass=$(egrep "('|\")password('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
echo "password: "$pass
echo "mysqldump -h $host -u $usr -p $db > $db-$(date '+%Y-%m-%d_%H-%M-%S').sql"
