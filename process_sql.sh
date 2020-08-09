mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -e "create database $1"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $1 < $2
rm out.csv
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $1 -e "select * from langlinks where ll_lang='en' into outfile '$(pwd)/out.csv' fields terminated by ',' enclosed by '\"' lines terminated by '\\n';"
