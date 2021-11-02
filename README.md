# Database final work
Download files to implement into Azuredatastudio or any other IDE for sql.
# Important Commands to take a look at
```sql
--change any value in a table with a condition
Update table_used
Set column_name
Where condition
--rename a column name
exec sp_rename 'table.Column_name', 'new_name';
--Drop column
Alter table table_used
Drop column clumn_name
--add a foreing key in case of mistakes
ALTER TABLE table
add FOREIGN KEY (column_name) REFERENCES Table_Referenced(column_referenced)
--Delete complete values of a table
DELETE FROM table_name WHERE condition
```
