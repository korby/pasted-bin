#!/bin/bash
settings=./sites/default/settings.env.php
host=$(egrep "('|\")host('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
db=$(egrep "('|\")database('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
usr=$(egrep "('|\")username('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
pass=$(egrep "('|\")password('|\")( )+=>" $settings| grep -v "^ \*"  | grep -v "^#"| cut -d "$(printf "\x27")" -f 4)
echo "password: "$pass
echo "mysqldump -h $host -u $usr -p $db > $db-$(date '+%Y-%m-%d_%H-%M-%S').sql"
