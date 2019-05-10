#!/bin/bash
settings=./sites/default/settings.env.php
host=$(egrep "('|\")database('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
db=$(egrep "('|\")database('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
usr=$(egrep "('|\")database('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
pass=$(egrep "('|\")database('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
echo $pass
echo "mysqldump -h $host -u $usr -p $db > db-$(date '+%Y-%m-%d_%H-%M-%S').sql"
