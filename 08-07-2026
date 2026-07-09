

# SQL Hierarchy

```text
Laptop
   ↓
MySQL Server
   ↓
Database
   ↓
Schema
   ↓
Tables
   ↓
Rows & Columns
```

### Remember

* **Server** → Stores databases
* **Database** → Collection of tables
* **Schema** → Structure of tables
* **Table** → Stores data
* **SQL** → Language to talk to database
* **Workbench** → GUI to manage database

---

# SQL Command Types

## DDL (Structure)--Data defination Language

Used to change table/database structure.

Commands

```text
CREATE
ALTER
DROP
TRUNCATE
RENAME
```

Think:

🏗️ Building a house

---

## DML (Data)--Data Manipulation Language

Changes table data.

Commands

```text
INSERT
UPDATE
DELETE
```

Think:

📝 Editing data

---

## DQL (Read)--Data query Language

```text
SELECT
```

Think:

👀 View data

---

## DCL (Permissions)--Data control language

```text
GRANT
REVOKE
```

Think:

🔐 Give/Remove access

---

## TCL (Transactions)--Transaction control language

```text
COMMIT
ROLLBACK
```

Think:

💾 Save / Undo

---

# INSERT vs UPDATE

INSERT

➡️ Adds NEW ROW

```sql
INSERT INTO employees VALUES(...);
```

UPDATE

➡️ Changes EXISTING ROW

```sql
UPDATE employees
SET salary=5000;
```

---

# ALTER TABLE

Used to change table structure.

Examples

```text
ADD COLUMN

DROP COLUMN

MODIFY COLUMN

RENAME COLUMN
```

---

# WHERE

Used to select specific rows.

Works with

✅ SELECT

✅ UPDATE

✅ DELETE

❌ INSERT

---

# SET

Used only with UPDATE.

```sql
UPDATE employees
SET salary=5000;
```

Think:

SET = Change value

---

# = vs IN

One value

```sql
WHERE employee_id=1;
```

Multiple values

```sql
WHERE employee_id IN(1,2,3);
```

Remember

```text
=  → One

IN → Many
```

---

# CASE

Use ONLY when different rows need different values.

Example

```sql
CASE

Employee1 → 100

Employee2 → 200

Employee3 → 300

END
```

Don't use CASE if everyone gets same value.

---

# AS vs RENAME

AS

Temporary name

```sql
SELECT salary AS Pay
```

RENAME

Permanent name

```sql
ALTER TABLE
RENAME COLUMN salary TO Pay;
```

Remember

AS = Nickname

RENAME = Official name

---

# COMMIT

Save permanently.

```sql
COMMIT;
```

Think

💾 Save

---

# ROLLBACK

Undo changes before commit.

```sql
ROLLBACK;
```

Think

↩ Undo

---

# AUTOCOMMIT

ON by default.

Every change saves automatically.

---

# DML vs DDL Rollback

Rollback works

✅ INSERT

✅ UPDATE

✅ DELETE

Rollback does NOT work

❌ CREATE

❌ ALTER

❌ DROP

❌ TRUNCATE

---

# Backup Before DROP

Best Practice

```sql
CREATE TABLE employees_backup AS
SELECT * FROM employees;
```

---

# Constraints

Constraints = Rules for data.

---

## NOT NULL

Cannot be empty.

Example

Employee ID

```text
101

102

NULL ❌
```

---

## UNIQUE

No duplicate values.

Can allow one NULL (MySQL).

Example

Email

```text
abc@gmail.com

xyz@gmail.com

abc@gmail.com ❌
```

---

## PRIMARY KEY

UNIQUE + NOT NULL

Example

Employee ID

```text
101

102

101 ❌

NULL ❌
```

---

## FOREIGN KEY

Connects two tables.

Example

Employees

Department_ID

↓

Departments Table

---

## DEFAULT

If no value is given,

SQL inserts default value.

Example

Country

↓

USA

---

## CHECK

Checks a condition.

Example

```text
Age >=18
```

Age =15 ❌

---

# UNIQUE vs PRIMARY KEY

UNIQUE

✔ No duplicates

✔ One NULL allowed

✔ Multiple UNIQUE constraints

PRIMARY KEY

✔ No duplicates

✔ No NULL

✔ Only ONE primary key

Remember

```text
PRIMARY KEY

=

UNIQUE

+

NOT NULL
```

---

# NOT NULL vs UNIQUE

NOT NULL

Cannot be empty.

UNIQUE

Cannot repeat.

---

# Why MODIFY COLUMN?

Used for

✔ NOT NULL

✔ Change datatype

✔ Change size

Example

```sql
ALTER TABLE employees
MODIFY COLUMN phone_number VARCHAR(100) NOT NULL;
```

---

# Why ADD CONSTRAINT?

Used for

✔ UNIQUE

✔ PRIMARY KEY

✔ FOREIGN KEY

✔ CHECK

Example

```sql
ALTER TABLE employees
ADD CONSTRAINT UNIQUE(email);
```

Remember

NOT NULL

↓

MODIFY COLUMN

Everything else

↓

ADD CONSTRAINT

---

# Common Mistakes

❌ INSERT + WHERE

❌ UPDATE SET COLUMN

❌ employee_id=(1,2,3)

Use

```sql
WHERE employee_id IN(1,2,3)
```

---

# Interview Memory Tricks

```text
INSERT → New Row

UPDATE → Existing Row

DELETE → Remove Row

SELECT → Read

ALTER → Change Structure

WHERE → Which Row?

SET → New Value

IN → Many Values

CASE → Different Values

AS → Temporary Name

RENAME → Permanent Name

COMMIT → Save

ROLLBACK → Undo

PRIMARY KEY → UNIQUE + NOT NULL

NOT NULL → MODIFY COLUMN

UNIQUE → ADD CONSTRAINT
```


# SQL Practice Questions (With My Answers)

## 1. Display all records from employees.

**My Answer**

```sql
SELECT * FROM employees;
```

✅ Correct

---

## 2. Rename employees table to workers.

**My Answer**

```sql
RENAME TABLE employees TO workers;
```

✅ Correct

---

## 3. Rename workers back to employees.

**My Answer**

```sql
RENAME TABLE workers TO employees;
```

✅ Correct

---

## 4. Add phone_number column.

**My Answer**

```sql
ALTER TABLE employees
ADD COLUMN phone_number INT;
```

✅ Correct (Later changed to `VARCHAR(100)`)

---

## 5. Rename phone_number to email.

**My Answer**

```sql
ALTER TABLE employees
RENAME COLUMN phone_number TO email;
```

✅ Correct

---

## 6. Change email datatype.

**My Answer**

```sql
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);
```

✅ Correct

---

## 7. Move email after phone_number.

**My Answer**

```sql
ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER phone_number;
```

✅ Correct syntax is

```sql
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100)
AFTER phone_number;
```

---

## 8. Delete email column.

**My Answer**

```sql
ALTER TABLE employees
DROP COLUMN email;
```

✅ Correct

---

## 9. Update employee 6.

**My Answer**

```sql
UPDATE employees
SET ...
WHERE employee_id = 6;
```

✅ Correct

---

## 10. Update different hourly_pay values.

**My Answer**

```sql
UPDATE employees
SET hourly_pay =
CASE
WHEN employee_id=1 THEN 40.50
WHEN employee_id=2 THEN 35.50
...
END
WHERE employee_id IN (1,2,3,4,5,6);
```

✅ Correct

---

## 11. Turn OFF autocommit.

**My Answer**

```sql
SET autocommit = 0;
```

✅ Correct

---

## 12. Save changes.

**My Answer**

```sql
COMMIT;
```

✅ Correct

---

## 13. Undo changes.

**My Answer**

```sql
ROLLBACK;
```

✅ Correct

---

## 14. Delete employee 6.

**My Answer**

```sql
DELETE FROM employees
WHERE employee_id=6;
```

✅ Correct

---

## 15. Add date, time and datetime columns.

**My Answer**

```sql
ALTER TABLE employees
ADD my_date DATE,
ADD my_time TIME,
ADD my_datetime DATETIME;
```

✅ Correct

---

## 16. Update current date, time and datetime.

**My Answer**

```sql
UPDATE employees
SET
my_date = CURRENT_DATE(),
my_time = CURRENT_TIME(),
my_datetime = NOW()
WHERE employee_id IN (1,2,3,4,5,6);
```

✅ Correct

---

## 17. Add NOT NULL constraint.

**My Answer**

```sql
ALTER TABLE employees
ADD CONSTRAINT
NOT NULL(phone_number);
```

❌ Wrong

✅ Correct

```sql
ALTER TABLE employees
MODIFY COLUMN phone_number VARCHAR(100) NOT NULL;
```

Reason:
`NOT NULL` uses **MODIFY COLUMN**, not **ADD CONSTRAINT**.

---

## 18. Add UNIQUE constraint.

**My Answer**

```sql
ALTER TABLE employees
ADD CONSTRAINT
UNIQUE(first_name);
```

✅ Correct

---

## 19. Insert using WHERE.

**My Answer**

```sql
INSERT INTO employees
VALUES(...)
WHERE employee_id=1;
```

❌ Wrong

✅ Correct

```sql
INSERT INTO employees
VALUES(...);
```

Reason:
`INSERT` never uses `WHERE`.

---

## 20. Update multiple employee IDs.

**My Answer**

```sql
WHERE employee_id=(1,2,3,4);
```

❌ Wrong

✅ Correct

```sql
WHERE employee_id IN (1,2,3,4);
```

---

## 21. Update using CASE.

**My Answer**

```sql
UPDATE employees
SET
CASE ...
END
```

❌ Wrong (for same values)

✅ Use CASE only when each row gets different values.

For same values:

```sql
UPDATE employees
SET salary = 5000;
```

---

## 22. Update current date/time.

**My Answer**

```sql
UPDATE employees
SET
my_date = CURRENT_DATE(),
my_time = CURRENT_TIME(),
my_datetime = NOW();
```

✅ Correct

---

## 23. Display unique rows.

**My Answer**

```sql
SELECT DISTINCT * FROM employees;
```

✅ Correct

---

## 24. Describe table structure.

**My Answer**

```sql
DESCRIBE employees;
```

✅ Correct

---

## 25. Drop employees table.

**My Answer**

```sql
DROP TABLE employees;
```

✅ Correct

---

# Mistakes I Should Never Make

❌ Don't use `WHERE` with `INSERT`.

❌ Don't write `SET COLUMN` in `UPDATE`.

❌ Don't write

```sql
WHERE employee_id=(1,2,3)
```

Use

```sql
WHERE employee_id IN (1,2,3)
```

❌ Don't use `CASE` if every row gets the same value.

❌ Don't use `ADD CONSTRAINT` for `NOT NULL`.

Use

```sql
MODIFY COLUMN column_name datatype NOT NULL;
```

✅ `AS` = Temporary name.

✅ `RENAME COLUMN` = Permanent name.

✅ `INSERT` = New Row.

✅ `UPDATE` = Existing Row.

✅ `ALTER` = Change Table Structure.

✅ `COMMIT` = Save.

✅ `ROLLBACK` = Undo (before COMMIT).

✅ `PRIMARY KEY = UNIQUE + NOT NULL`.
