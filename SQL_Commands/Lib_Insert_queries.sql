use Library;


SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE '/Users/lucagirotti/Documents/DataBases/Project/20-21/Author.csv'
INTO TABLE AUTHOR
FIELDS TERMINATED BY ','; 


SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE '/Users/lucagirotti/Documents/DataBases/Project/20-21/Library_Branch.csv'
INTO TABLE LIBRARY
FIELDS TERMINATED BY ',';

SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE '/Users/lucagirotti/Documents/DataBases/Project/20-21/Book.csv'
INTO TABLE BOOK
FIELDS TERMINATED BY ',';

SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE '/Users/lucagirotti/Documents/DataBases/Project/Database_project_2022/20-21/Department.csv'
INTO TABLE DEPARTMENT
FIELDS TERMINATED BY ',';

SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE '/Users/lucagirotti/Documents/DataBases/Project/Database_project_2022/20-21/User.csv'
INTO TABLE USER
FIELDS TERMINATED BY ',';

SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE '/Users/lucagirotti/Documents/DataBases/Project/Database_project_2022/20-21/Has_borrowed.csv'
INTO TABLE HAS_BORROWED
FIELDS TERMINATED BY ',';

SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE '/Users/lucagirotti/Documents/DataBases/Project/Database_project_2022/20-21/Has_written.csv'
INTO TABLE HAS_WRITTEN
FIELDS TERMINATED BY ',';