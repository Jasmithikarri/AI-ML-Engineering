# SQL Basics & Commands

## SQL Hierarchy

Laptop

↓

MySQL Server

↓

Database

↓

Tables

↓

Rows & Columns

**Remember:**

* Server → Stores databases
* Database → Collection of tables
* Table → Stores data
* SQL → Language used to communicate with the database
* MySQL Workbench → Tool used to manage databases

## SQL Command Types

### DDL (Data Definition Language)

Used to create or change the structure of a database.

Commands:

CREATE

ALTER

DROP

TRUNCATE

RENAME

**Easy way to remember:** Building or changing a house.

### DML (Data Manipulation Language)

Used to work with data inside a table.

Commands:

INSERT

UPDATE

DELETE

**Easy way to remember:** Editing data.

### DQL (Data Query Language)

Used to read data.

Command:

SELECT

### DCL (Data Control Language)

Used to manage permissions.

Commands:

GRANT

REVOKE

### TCL (Transaction Control Language)

Used to manage transactions.

Commands:

COMMIT

ROLLBACK

## INSERT vs UPDATE

**INSERT**

* Adds a new row.

Example:

INSERT INTO employees VALUES(...);

**UPDATE**

* Changes existing rows.

Example:

UPDATE employees

SET salary = 5000;

## ALTER TABLE

Used to change the table structure.

Common operations:

ADD COLUMN

DROP COLUMN

MODIFY COLUMN

RENAME COLUMN

## WHERE

Used to select or update specific rows.

Works with:

SELECT

UPDATE

DELETE

Not used with:

INSERT

## SET

Used only with UPDATE.

Example:

UPDATE employees

SET salary = 5000;

**Remember:** SET changes column values.

## = vs IN

Use **=** when checking one value.

Example:

WHERE employee_id = 1;

Use **IN** when checking multiple values.

Example:

WHERE employee_id IN (1,2,3);

## CASE

Used when different rows need different values.

Example:

Employee 1 → 100

Employee 2 → 200

Employee 3 → 300

**Remember:** Don't use CASE if every row gets the same value.

## AS vs RENAME

AS

* Temporary column name.

Example:

SELECT salary AS Pay;

RENAME

* Permanent column name.

Example:

ALTER TABLE employees

RENAME COLUMN salary TO Pay;

**Remember:**

* AS → Temporary
* RENAME → Permanent

## COMMIT

Saves changes permanently.

COMMIT;

## ROLLBACK

Undoes changes before COMMIT.

ROLLBACK;

## AUTOCOMMIT

Enabled by default.

Every change is saved automatically unless autocommit is turned off.

## DML vs DDL Rollback

Rollback works with:

INSERT

UPDATE

DELETE

Rollback does **not** work with:

CREATE

ALTER

DROP

TRUNCATE

## Backup Before DROP

Always create a backup before deleting a table.

Example:

CREATE TABLE employees_backup AS

SELECT * FROM employees;

## Constraints

Constraints are rules applied to table columns.

### NOT NULL

Column cannot contain NULL values.

### UNIQUE

Duplicate values are not allowed.

One NULL value is allowed in MySQL.

### PRIMARY KEY

Must be unique and cannot be NULL.

### FOREIGN KEY

Creates a relationship between two tables.

### DEFAULT

Provides a default value if no value is entered.

### CHECK

Allows only values that satisfy a condition.

Example:

Age >= 18

## PRIMARY KEY vs UNIQUE

PRIMARY KEY

* No duplicates
* No NULL values
* Only one primary key per table

UNIQUE

* No duplicates
* One NULL allowed
* Multiple UNIQUE constraints allowed

**Remember:**

PRIMARY KEY = UNIQUE + NOT NULL

## NOT NULL vs UNIQUE

NOT NULL

* Value cannot be empty.

UNIQUE

* Value cannot repeat.

## MODIFY COLUMN vs ADD CONSTRAINT

Use MODIFY COLUMN for:

* NOT NULL
* Changing datatype
* Changing column size

Use ADD CONSTRAINT for:

* UNIQUE
* PRIMARY KEY
* FOREIGN KEY
* CHECK

## Common Mistakes

Don't use WHERE with INSERT.

Don't write:

WHERE employee_id = (1,2,3)

Use:

WHERE employee_id IN (1,2,3)

Don't use CASE when every row gets the same value.

Use MODIFY COLUMN for NOT NULL.

Use ADD CONSTRAINT for UNIQUE, PRIMARY KEY, FOREIGN KEY and CHECK.

## Quick Revision

| Topic       | Remember                            |
| ----------- | ----------------------------------- |
| INSERT      | Add new row                         |
| UPDATE      | Update existing row                 |
| DELETE      | Delete rows                         |
| SELECT      | Read data                           |
| ALTER       | Change table structure              |
| WHERE       | Select specific rows                |
| SET         | Change values                       |
| IN          | Multiple values                     |
| CASE        | Different values for different rows |
| AS          | Temporary name                      |
| RENAME      | Permanent name                      |
| COMMIT      | Save changes                        |
| ROLLBACK    | Undo changes                        |
| PRIMARY KEY | UNIQUE + NOT NULL                   |

---

# File 2: SQL Practice Questions.md

This file should contain only your practice.

# SQL Practice Questions

## Question 1

Display all records from employees.

**My Answer**

SELECT * FROM employees;

✅ Correct

## Question 2

Rename employees table to workers.

**My Answer**

RENAME TABLE employees TO workers;

✅ Correct

## Question 3

Rename workers back to employees.

**My Answer**

RENAME TABLE workers TO employees;

✅ Correct

...

Continue the remaining questions in the same format.

At the end add:

# Common Mistakes I Should Avoid

* Don't use WHERE with INSERT.
* Don't use CASE when every row gets the same value.
* Use IN() for multiple values.
* Use MODIFY COLUMN for NOT NULL.
* Use ADD CONSTRAINT for UNIQUE, PRIMARY KEY, FOREIGN KEY and CHECK.
* AS is temporary.
* RENAME COLUMN is permanent.
* COMMIT saves changes.
* ROLLBACK undoes changes before COMMIT.


