
mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| aadhar_verification |
| db_name             |
| demo                |
| elocalhood          |
| information_schema  |
| local               |
| mysql               |
| performance_schema  |
| sys                 |
+---------------------+
9 rows in set (0.01 sec)

mysql> use demo;
Database changed
mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| name    | varchar(30) | YES  |     | NULL    |       |
| id      | int         | NO   | PRI | NULL    |       |
| address | varchar(50) | YES  |     | NULL    |       |
| marks   | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| sun      |  4 | delhi   |    66 |
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| om       | 15 | bombay  |    96 |
| ram      | 22 | latur   |    76 |
| shushant | 52 | nagpur  |    26 |
+----------+----+---------+-------+
7 rows in set (0.01 sec)

mysql> update student set address='poona' where id=52;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| sun      |  4 | delhi   |    66 |
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| om       | 15 | bombay  |    96 |
| ram      | 22 | latur   |    76 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table student  add phoneNo int;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student;
+----------+----+---------+-------+---------+
| name     | id | address | marks | phoneNo |
+----------+----+---------+-------+---------+
| sun      |  4 | delhi   |    66 |    NULL |
| shushant |  5 | nagpur  |    26 |    NULL |
| pratik   |  9 | nashik  |    44 |    NULL |
| suaysh   | 12 | pune    |    78 |    NULL |
| om       | 15 | bombay  |    96 |    NULL |
| ram      | 22 | latur   |    76 |    NULL |
| shushant | 52 | poona   |    26 |    NULL |
+----------+----+---------+-------+---------+
7 rows in set (0.00 sec)

mysql> update student set phoneNo=8421532175 where id=12;
ERROR 1264 (22003): Out of range value for column 'phoneNo' at row 1
mysql> update student set phoneNo=842153 where id=12;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+----------+----+---------+-------+---------+
| name     | id | address | marks | phoneNo |
+----------+----+---------+-------+---------+
| sun      |  4 | delhi   |    66 |    NULL |
| shushant |  5 | nagpur  |    26 |    NULL |
| pratik   |  9 | nashik  |    44 |    NULL |
| suaysh   | 12 | pune    |    78 |  842153 |
| om       | 15 | bombay  |    96 |    NULL |
| ram      | 22 | latur   |    76 |    NULL |
| shushant | 52 | poona   |    26 |    NULL |
+----------+----+---------+-------+---------+
7 rows in set (0.00 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| name    | varchar(30) | YES  |     | NULL    |       |
| id      | int         | NO   | PRI | NULL    |       |
| address | varchar(50) | YES  |     | NULL    |       |
| marks   | int         | YES  |     | NULL    |       |
| phoneNo | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table student modify column name varchar(60);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| name    | varchar(60) | YES  |     | NULL    |       |
| id      | int         | NO   | PRI | NULL    |       |
| address | varchar(50) | YES  |     | NULL    |       |
| marks   | int         | YES  |     | NULL    |       |
| phoneNo | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table student drop column phoneNo;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| sun      |  4 | delhi   |    66 |
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| om       | 15 | bombay  |    96 |
| ram      | 22 | latur   |    76 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
7 rows in set (0.00 sec)

mysql> delete from student where name='sun';
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| om       | 15 | bombay  |    96 |
| ram      | 22 | latur   |    76 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
6 rows in set (0.00 sec)

mysql> select sum (marks)from student;
ERROR 1630 (42000): FUNCTION demo.sum does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql> select sum(marks)from student;
+------------+
| sum(marks) |
+------------+
|        346 |
+------------+
1 row in set (0.01 sec)

mysql> select avg(marks)from student;
+------------+
| avg(marks) |
+------------+
|    57.6667 |
+------------+
1 row in set (0.00 sec)

mysql> select max(marks)from student;
+------------+
| max(marks) |
+------------+
|         96 |
+------------+
1 row in set (0.00 sec)

mysql> select min(marks)from student;
+------------+
| min(marks) |
+------------+
|         26 |
+------------+
1 row in set (0.00 sec)

mysql> select * from student order by id;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| om       | 15 | bombay  |    96 |
| ram      | 22 | latur   |    76 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
6 rows in set (0.00 sec)

mysql> select * from student order by name;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| om       | 15 | bombay  |    96 |
| pratik   |  9 | nashik  |    44 |
| ram      | 22 | latur   |    76 |
| shushant |  5 | nagpur  |    26 |
| shushant | 52 | poona   |    26 |
| suaysh   | 12 | pune    |    78 |
+----------+----+---------+-------+
6 rows in set (0.00 sec)

mysql> select * from student order by marks;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| shushant | 52 | poona   |    26 |
| pratik   |  9 | nashik  |    44 |
| ram      | 22 | latur   |    76 |
| suaysh   | 12 | pune    |    78 |
| om       | 15 | bombay  |    96 |
+----------+----+---------+-------+
6 rows in set (0.00 sec)

mysql> select * from student order by marks desc;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| om       | 15 | bombay  |    96 |
| suaysh   | 12 | pune    |    78 |
| ram      | 22 | latur   |    76 |
| pratik   |  9 | nashik  |    44 |
| shushant |  5 | nagpur  |    26 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
6 rows in set (0.00 sec)

mysql> select * from student where name like 's%';
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| suaysh   | 12 | pune    |    78 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from student where name like '_a%';
+------+----+---------+-------+
| name | id | address | marks |
+------+----+---------+-------+
| ram  | 22 | latur   |    76 |
+------+----+---------+-------+
1 row in set (0.00 sec)

mysql> select * from student where name like '%s_';
+--------+----+---------+-------+
| name   | id | address | marks |
+--------+----+---------+-------+
| suaysh | 12 | pune    |    78 |
+--------+----+---------+-------+
1 row in set (0.00 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| om       | 15 | bombay  |    96 |
| ram      | 22 | latur   |    76 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
6 rows in set (0.00 sec)

mysql> create table employe(id int not null primary key, salary int,empcode
int,name varchar(30));
Query OK, 0 rows affected (0.03 sec)

mysql> insert into employe values(12,20000,102,'shivan'),(23,60000,104,'arun
'),(28,9000,112,'anup'),(5,1000,202,'shushant');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from employe;
+----+--------+---------+----------+
| id | salary | empcode | name     |
+----+--------+---------+----------+
|  5 |   1000 |     202 | shushant |
| 12 |  20000 |     102 | shivan   |
| 23 |  60000 |     104 | arun     |
| 28 |   9000 |     112 | anup     |
+----+--------+---------+----------+
4 rows in set (0.00 sec)

mysql> select * from student inner join employe on student.id=employe.id;
+----------+----+---------+-------+----+--------+---------+----------+
| name     | id | address | marks | id | salary | empcode | name     |
+----------+----+---------+-------+----+--------+---------+----------+
| shushant |  5 | nagpur  |    26 |  5 |   1000 |     202 | shushant |
| suaysh   | 12 | pune    |    78 | 12 |  20000 |     102 | shivan   |
+----------+----+---------+-------+----+--------+---------+----------+
2 rows in set (0.00 sec)

mysql> select * from student left join employe on student.id=employe.id;
+----------+----+---------+-------+------+--------+---------+----------+
| name     | id | address | marks | id   | salary | empcode | name     |
+----------+----+---------+-------+------+--------+---------+----------+
| shushant |  5 | nagpur  |    26 |    5 |   1000 |     202 | shushant |
| pratik   |  9 | nashik  |    44 | NULL |   NULL |    NULL | NULL     |
| suaysh   | 12 | pune    |    78 |   12 |  20000 |     102 | shivan   |
| om       | 15 | bombay  |    96 | NULL |   NULL |    NULL | NULL     |
| ram      | 22 | latur   |    76 | NULL |   NULL |    NULL | NULL     |
| shushant | 52 | poona   |    26 | NULL |   NULL |    NULL | NULL     |
+----------+----+---------+-------+------+--------+---------+----------+
6 rows in set (0.00 sec)

mysql> select * from student right join employe on student.id=employe.id;
+----------+------+---------+-------+----+--------+---------+----------+
| name     | id   | address | marks | id | salary | empcode | name     |
+----------+------+---------+-------+----+--------+---------+----------+
| shushant |    5 | nagpur  |    26 |  5 |   1000 |     202 | shushant |
| suaysh   |   12 | pune    |    78 | 12 |  20000 |     102 | shivan   |
| NULL     | NULL | NULL    |  NULL | 23 |  60000 |     104 | arun     |
| NULL     | NULL | NULL    |  NULL | 28 |   9000 |     112 | anup     |
+----------+------+---------+-------+----+--------+---------+----------+
4 rows in set (0.00 sec)

mysql> select * from student cross join;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select * from student cross join employe;
+----------+----+---------+-------+----+--------+---------+----------+
| name     | id | address | marks | id | salary | empcode | name     |
+----------+----+---------+-------+----+--------+---------+----------+
| shushant |  5 | nagpur  |    26 | 28 |   9000 |     112 | anup     |
| shushant |  5 | nagpur  |    26 | 23 |  60000 |     104 | arun     |
| shushant |  5 | nagpur  |    26 | 12 |  20000 |     102 | shivan   |
| shushant |  5 | nagpur  |    26 |  5 |   1000 |     202 | shushant |
| pratik   |  9 | nashik  |    44 | 28 |   9000 |     112 | anup     |
| pratik   |  9 | nashik  |    44 | 23 |  60000 |     104 | arun     |
| pratik   |  9 | nashik  |    44 | 12 |  20000 |     102 | shivan   |
| pratik   |  9 | nashik  |    44 |  5 |   1000 |     202 | shushant |
| suaysh   | 12 | pune    |    78 | 28 |   9000 |     112 | anup     |
| suaysh   | 12 | pune    |    78 | 23 |  60000 |     104 | arun     |
| suaysh   | 12 | pune    |    78 | 12 |  20000 |     102 | shivan   |
| suaysh   | 12 | pune    |    78 |  5 |   1000 |     202 | shushant |
| om       | 15 | bombay  |    96 | 28 |   9000 |     112 | anup     |
| om       | 15 | bombay  |    96 | 23 |  60000 |     104 | arun     |
| om       | 15 | bombay  |    96 | 12 |  20000 |     102 | shivan   |
| om       | 15 | bombay  |    96 |  5 |   1000 |     202 | shushant |
| ram      | 22 | latur   |    76 | 28 |   9000 |     112 | anup     |
| ram      | 22 | latur   |    76 | 23 |  60000 |     104 | arun     |
| ram      | 22 | latur   |    76 | 12 |  20000 |     102 | shivan   |
| ram      | 22 | latur   |    76 |  5 |   1000 |     202 | shushant |
| shushant | 52 | poona   |    26 | 28 |   9000 |     112 | anup     |
| shushant | 52 | poona   |    26 | 23 |  60000 |     104 | arun     |
| shushant | 52 | poona   |    26 | 12 |  20000 |     102 | shivan   |
| shushant | 52 | poona   |    26 |  5 |   1000 |     202 | shushant |
+----------+----+---------+-------+----+--------+---------+----------+
24 rows in set (0.00 sec)

mysql>
