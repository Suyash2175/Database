
# MySQL Basic Command Operations

This guide provides basic MySQL commands with examples to help you get started with MySQL database operations.

## 1. Connecting to MySQL Server

```bash
mysql -u [username] -p
```

Enter your password when prompted.

## 2. Creating a Database

```sql
CREATE DATABASE mydatabase;
```

## 3. Showing Databases

```sql
SHOW DATABASES;
```

## 4. Selecting a Database

```sql
USE mydatabase;
```

## 5. Creating a Table

```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## 6. Showing Tables

```sql
SHOW TABLES;
```

## 7. Describing a Table

```sql
DESCRIBE users;
```

## 8. Inserting Data

```sql
INSERT INTO users (username, email) VALUES ('john_doe', 'john@example.com');
```

## 9. Selecting Data

```sql
SELECT * FROM users;
```

## 10. Updating Data

```sql
UPDATE users SET email = 'john_doe@example.com' WHERE username = 'john_doe';
```

## 11. Deleting Data

```sql
DELETE FROM users WHERE username = 'john_doe';
```

## 12. Dropping a Table

```sql
DROP TABLE users;
```

## 13. Dropping a Database

```sql
DROP DATABASE mydatabase;
```

