# Create Page ID Pairs
script for extracting id pairs (of source language with english as target language) from *-langlinks.sql file in wikidump
## Requirements
* bash
* python 3
* mysql (in your localhost)
* Python Libraries:
	* requests
	* pandas
	* tqdm
## Usage
```
export MYSQL_USER={mysql username}
export MYSQL_PASSWORD={mysql password}
./process_sql.sh {mysql_database_name} {path to *-langlinks.sql file}
```
