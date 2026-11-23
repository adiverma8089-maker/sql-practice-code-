Drop database if exists DDL_Commands;
create DATABASE DDL_Commands;
use  DDL_Commands;

CREATE TABLE my_table(
id INT,
name VARCHAR(100) Not NULL,
age int NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO my_table (id, name, age) VALUES
(1, 'Rohit', 25),
(2, 'Sachin', 35),
(3, 'Vikas', 28);

-- Create my_table2
-- Create my_table2
CREATE TABLE my_table2(
    id INT,
    description VARCHAR(255) NOT NULL
);

-- Insert data into my_table2
INSERT INTO my_table2 (id, description) VALUES
(1, 'Item 1'),
(2, 'Item 2'),
(3, 'Item 3');

SELECT * FROM my_table;
SELECT * FROM my_table2;
-- Write a SQL query to rename a column in an existing table my_table from name to
-- full_name.
alter TABLE my_table RENAME COLUMN name to full_name;
-- Write a SQL query to change the data type of the age column in my_table from INT toBIGINT.
ALTER TABLE my_table MODIFY COLUMN age BIGINT NOT NULL;
-- SQL mein DESC ka full form DESCRIBE hota hai.
-- Iska use kisi table ka structure (structure/details) dekhne ke liye kiya jata hai.
DESC my_table;
-- Write a SQL query to add a new column email of type VARCHAR(100) to the tablemy_table.
alter table my_table ADD COLUMN email VARCHAR(100);
-- Write a SQL query to add a new column middle_name of type VARCHAR(50) after thename column in my_table.
alter table my_table ADD COLUMN middle_name VARCHAR(50) after full_name ;
-- Write a SQL query to add a new column EMP_Rank of type INT as the first column in my_table.
alter table my_table ADD COLUMN EMP_Rank INT FIRST;
-- Write a SQL query to modify the created_at column in my_table to DATETIME instead ofTIMESTAMP.
alter table my_table MODIFY COLUMN created_at datetime default current_timestamp;
-- Write a SQL query to change the data type of the description column in my_table2 from VARCHAR(255) to TEXT
alter table my_table2 modify COLUMN description text;
DESC my_table2;
-- Write a SQL query to make the name column in my_table nullable.
alter table my_table modify column full_name varchar(100) null;
-- Write a SQL query to add a PRIMARY KEY constraint on the id column in my_table.
alter table my_table ADD  PRIMARY KEY(id);
-- 10. Write a SQL query to drop the middle_name column from my_table.
ALTER table my_table DROP COLUMN middle_name;
-- Write a SQL query to change the age column to allow NULL values in my_table.
alter table my_table modify column age INT NULL;
-- Write a SQL query to add a foreign key constraint to the id column in my_table2,referencing the id column in my_table.
alter table my_table2 ADD CONSTRAINT fk_id FOREIGN KEY (id) references my_table(id);

-- Write a SQL query to remove a foreign key constraint from the my_table2 referencing DROPmy_table.
alter table my_table2 DROP FOREIGN KEY fk_id;
SHOW CREATE TABLE my_table2;

-- Write a SQL query to modify the name column in my_table to allow a maximum length of 200 characters. 
alter table my_table modify column full_name varchar(200);

-- Write a SQL query to drop the my_table2 from the database.
DROP table my_table2;

-- 17. Write a SQL query to drop the foreign key constraint fk_id in my_table2.
alter table my_table2 drop foreign key fk_id;

-- Write a SQL query to drop the PRIMARY KEY constraint on the id column in my_table.
alter table my_table drop primary key;
-- 19. Write a SQL query to drop a column named age from the my_table.
alter table my_table drop column age;
-- Write a SQL query to drop the DDL_Commands database.
drop database DDL_Commands;