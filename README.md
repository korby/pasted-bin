Usage

```shell
wget -qO - https://raw.githubusercontent.com/korby/pasted-bin/master/cachetool-install.sh | bash
```
```shell
wget -qO - https://raw.githubusercontent.com/korby/pasted-bin/master/composer-install.sh | bash
```
```shell
wget -qO - https://raw.githubusercontent.com/korby/pasted-bin/master/dump-drupal.sh | bash
```
```shell
wget -qO - https://raw.githubusercontent.com/korby/pasted-bin/master/dump-magento.sh | bash
```
```shell
wget -qO - https://raw.githubusercontent.com/korby/pasted-bin/master/dump-magento1.sh | bash
```
```shell
wget -qO - https://raw.githubusercontent.com/korby/pasted-bin/master/dump-wordpress.sh | bash
```
```shell
wget -qO - https://raw.githubusercontent.com/korby/pasted-bin/master/srdb-install.sh | bash
```
ssh php /usr/bin/php srdb/srdb.cli.php -z -h 10.128.19.162 -u $(grep "DB_USER" ../current/web/wp-config.php| cut -d "'" -f 4) -p$(grep "DB_PASSWORD" ../current/web/wp-config.php| cut -d "'" -f 4) -n $(grep "DB_NAME" ../current/web/wp-config.php| cut -d "'" -f 4) -s "http://pattern/to/replace/" -r "http://pattern/in/replacement/"
```shell
wget -qO - https://raw.githubusercontent.com/korby/pasted-bin/master/wp-cli-install.sh | bash
```
```shell
wget -qO - https://raw.githubusercontent.com/korby/pasted-bin/master/dbseeker-install.sh | bash
```

