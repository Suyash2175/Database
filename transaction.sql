// practice code
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

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
mysql> show tables;
+----------------+
| Tables_in_demo |
+----------------+
| employe        |
| student        |
+----------------+
2 rows in set (0.01 sec)

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

mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into student values('rutu',33,'satara',88);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| om       | 15 | bombay  |    96 |
| ram      | 22 | latur   |    76 |
| rutu     | 33 | satara  |    88 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
7 rows in set (0.00 sec)

mysql> delete from student where name='om';
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| ram      | 22 | latur   |    76 |
| rutu     | 33 | satara  |    88 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
6 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.01 sec)

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

mysql> insert into student values('rutu',33,'satara',88);
Query OK, 1 row affected (0.01 sec)

mysql> commit;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| om       | 15 | bombay  |    96 |
| ram      | 22 | latur   |    76 |
| rutu     | 33 | satara  |    88 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
7 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| om       | 15 | bombay  |    96 |
| ram      | 22 | latur   |    76 |
| rutu     | 33 | satara  |    88 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
7 rows in set (0.00 sec)

mysql> delete from student where name='om';
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| ram      | 22 | latur   |    76 |
| rutu     | 33 | satara  |    88 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
6 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| ram      | 22 | latur   |    76 |
| rutu     | 33 | satara  |    88 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
6 rows in set (0.00 sec)

mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from student where name='ram';
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| rutu     | 33 | satara  |    88 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
5 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from student;
+----------+----+---------+-------+
| name     | id | address | marks |
+----------+----+---------+-------+
| shushant |  5 | nagpur  |    26 |
| pratik   |  9 | nashik  |    44 |
| suaysh   | 12 | pune    |    78 |
| ram      | 22 | latur   |    76 |
| rutu     | 33 | satara  |    88 |
| shushant | 52 | poona   |    26 |
+----------+----+---------+-------+
6 rows in set (0.00 sec)

mysql>
