
mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| aadhar_verification |
| db_name             |
| elocalhood          |
| information_schema  |
| local               |
| mysql               |
| performance_schema  |
| sys                 |
+---------------------+
8 rows in set (0.02 sec)

mysql> create database demo;
Query OK, 1 row affected (0.01 sec)

mysql> use demo;
Database changed
mysql> create table student( name varchar(30) ,id int not null primary key, address varchar(50), marks int);
Query OK, 0 rows affected (0.03 sec)

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

mysql> insret into student(marks,id,name,address)values(78,12,'suaysh','pune
');
mysql> insert into student(marks,id,name,address)values(78,12,'suaysh','pune
');
Query OK, 1 row affected (0.01 sec)

mysql> insert  into student values('om',15,'bombay',96);
Query OK, 1 row affected (0.01 sec)

mysql> insert  into student values('ram',22,'latur',76);
Query OK, 1 row affected (0.01 sec)

mysql> insert  into student values('sun',4,'delhi',66);
Query OK, 1 row affected (0.01 sec)

mysql> insert  into student values('shushant',5,'nagpur',26); ('pratik',9,'nashik',44);
Query OK, 1 row affected (0.01 sec)


Records: 2  Duplicates: 0  Warnings: 0

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
7 rows in set (0.00 sec)

mysql> select name from student;
+----------+
| name     |
+----------+
| sun      |
| shushant |
| pratik   |
| suaysh   |
| om       |
| ram      |
| shushant |
+----------+
7 rows in set (0.00 sec)

mysql> select id,name from student;
+----+----------+
| id | name     |
+----+----------+
|  4 | sun      |
|  5 | shushant |
|  9 | pratik   |
| 12 | suaysh   |
| 15 | om       |
| 22 | ram      |
| 52 | shushant |
+----+----------+
7 rows in set (0.00 sec)

mysql> select * from student where id=12;
+--------+----+---------+-------+
| name   | id | address | marks |
+--------+----+---------+-------+
| suaysh | 12 | pune    |    78 |
+--------+----+---------+-------+
1 row in set (0.00 sec)
