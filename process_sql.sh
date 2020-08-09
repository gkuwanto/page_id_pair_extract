mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -e "create database $1"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $1 < $2
rm out.csv
mysql -ugarry -pgarry gu -e "select * from langlinks where ll_lang='en' into outfile '$(pwd)/out.csv' fields terminated by ',' enclosed by '\"' lines terminated by '\\n';"
python get_ids.py out.csv
