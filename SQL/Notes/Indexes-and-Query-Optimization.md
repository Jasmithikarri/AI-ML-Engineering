# SQL Notes – Indexes & Query Optimization

# What is an Index?

An **Index** is a data structure that helps SQL find data faster without scanning every row in a table.

Think of it like the index page of a book.

---

# Why Do We Use Indexes?

* Retrieve data faster
* Improve query performance
* Reduce full table scans
* Optimize SQL queries

Indexes are mainly used with:

* WHERE
* JOIN
* ORDER BY
* GROUP BY

---

# Types of Indexes

## 1. Clustered Index

**Definition**

A Clustered Index stores the **actual table data in sorted order**.

**Key Points**

* Stores actual table data.
* Changes the physical order of the table.
* Only one clustered index per table.
* In MySQL (InnoDB), the Primary Key automatically becomes the clustered index.

**Example**

CREATE TABLE employee(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100)
);

Query:

SELECT *
FROM employee
WHERE employee_id = 101;

Uses the clustered index because `employee_id` is the Primary Key.

---

## Why Only One Clustered Index?

A table can only be physically arranged in one order.

Example:

Books can be arranged by:

* Book ID
* Author
* Title

Only one arrangement is possible.

---

## 2. Non-Clustered Index

**Definition**

A Non-Clustered Index stores **indexed values and pointers** to the actual rows.

It does **not** change the table order.

**Key Points**

* Stores index values + pointers.
* Table order remains unchanged.
* Multiple non-clustered indexes can exist.

**Example**

CREATE INDEX idx_department
ON employee(department);

Query:

SELECT *
FROM employee
WHERE department = 'IT';

Uses the non-clustered index.

---

## Why Multiple Non-Clustered Indexes?

Because they are separate lookup structures.

Example:

CREATE INDEX idx_email
ON employee(email);

CREATE INDEX idx_department
ON employee(department);

Both indexes exist without changing the table.

---

## 3. Unique Index

**Definition**

A Unique Index prevents duplicate values.

**Key Points**

* No duplicate values allowed.
* Improves search performance.
* Multiple unique indexes can exist.

**Example**

CREATE UNIQUE INDEX idx_email
ON employee(email);

Allowed:

[john@gmail.com](mailto:john@gmail.com)

[alice@gmail.com](mailto:alice@gmail.com)

Not Allowed:

[john@gmail.com](mailto:john@gmail.com)

[john@gmail.com](mailto:john@gmail.com)

---

## 4. Composite Index

**Definition**

A Composite Index is created on **multiple columns**.

**Example**

CREATE INDEX idx_dept_salary
ON employee(department, salary);

Order:

department → salary

---

Query 1

SELECT *
FROM employee
WHERE department = 'IT';

✅ Uses the index.

---

Query 2

SELECT *
FROM employee
WHERE department = 'IT'
AND salary = 70000;

✅ Uses the index.

---

Query 3

SELECT *
FROM employee
WHERE salary = 70000;

❌ Usually does not use the index efficiently because the first column (`department`) is missing.

---

## Why is Column Order Important?

Composite indexes always search from the **first column**.

Example:

(department, salary)

Works for:

* department
* department + salary

Does not efficiently work for:

* salary only

---

# Clustered vs Non-Clustered

**Clustered Index**

* Stores actual table data
* Changes table order
* Only one per table
* Usually Primary Key

**Non-Clustered Index**

* Stores index values and pointers
* Does not change table order
* Multiple allowed
* Created manually

---

# Primary Key vs Unique Index

**Primary Key**

* Only one per table
* Cannot have NULL
* Automatically creates an index

**Unique Index**

* Multiple allowed
* Prevents duplicates
* Can allow NULLs (depends on database)

---

# Single vs Composite Index

**Single Column Index**

CREATE INDEX idx_email
ON employee(email);

Used when searching by one column.

---

**Composite Index**

CREATE INDEX idx_name
ON employee(first_name, last_name);

Used when searching using multiple columns together.

---

# When Should We Create an Index?

Create indexes on columns frequently used in:

* WHERE
* JOIN
* ORDER BY
* GROUP BY

Examples:

* customer_id
* email
* product_name
* order_date

---

# When Should We Avoid Indexes?

Avoid indexes on:

* Gender
* Yes/No
* Active/Inactive

Reason:

Very few unique values, so indexes provide little benefit.

Also avoid too many indexes on tables with frequent:

* INSERT
* UPDATE
* DELETE

Reason:

Every data modification also updates the index, making writes slower.

---

# Query Optimization Tips

## 1. Avoid SELECT *

Bad

SELECT *

FROM employee;

Good

SELECT employee_id, employee_name

FROM employee;

Retrieve only required columns.

---

## 2. Use WHERE Before GROUP BY

Bad

SELECT department, COUNT(*)

FROM employee

GROUP BY department

HAVING department = 'IT';

Good

SELECT department, COUNT(*)

FROM employee

WHERE department = 'IT'

GROUP BY department;

Filter rows first, then group them.

---

## 3. Prefer JOINs Over Unnecessary Subqueries

Example

SELECT c.first_name, o.order_id

FROM customer c

JOIN orders o

ON c.customer_id = o.customer_id;

JOINs are often more efficient.

---

## 4. Avoid Functions on Indexed Columns

Bad

SELECT *

FROM payment

WHERE YEAR(payment_date) = 2025;

Good

SELECT *

FROM payment

WHERE payment_date BETWEEN '2025-01-01' AND '2025-12-31';

Allows SQL to use the index efficiently.

---

## 5. Use LIMIT

SELECT *

FROM employee

LIMIT 10;

Returns only the required rows.

---

## 6. Use EXPLAIN

EXPLAIN

SELECT *

FROM employee

WHERE employee_id = 101;

Shows:

* Query execution plan
* Whether an index is used
* Number of rows scanned
* Query performance

---

# Quick Points

* Index improves query performance.
* Primary Key automatically creates a clustered index in MySQL (InnoDB).
* Only one clustered index per table.
* Multiple non-clustered indexes are allowed.
* Unique index prevents duplicate values.
* Composite index contains multiple columns.
* Composite indexes work efficiently only when the query starts with the first indexed column.
* Create indexes on frequently searched columns.
* Avoid indexes on low-cardinality columns (Gender, Yes/No, Active/Inactive).
* Too many indexes slow down INSERT, UPDATE, and DELETE operations.
* Use `EXPLAIN` to check how SQL executes a query.
* Avoid `SELECT *` and unnecessary functions on indexed columns.
