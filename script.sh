#!/bin/bash
for tables in $(mysql -u commander -pcommander alexqualcom50 -e 'show tables;')
do
mysqldump -u commander -pcommander alexqualcom50 $tables > $tables.sql 2>error.log
done
~    
