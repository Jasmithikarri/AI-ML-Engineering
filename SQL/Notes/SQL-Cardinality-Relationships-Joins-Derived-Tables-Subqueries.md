# Cardinality, Relationships, Joins, Derived Tables & Subqueries

## Cardinality

**Definition:**
Cardinality describes the relationship between two tables. It tells us how many rows in one table can be related to rows in another table.

### Types of Cardinality

### 1. One-to-One (1:1)

**Definition:**
One row in the first table is related to only one row in the second table.

**Examples:**

* One Employee → One Passport
* One Person → One Aadhaar Card
* One Student → One Student ID

**Remember:**
One matches only one.

### 2. One-to-Many (1:M)

**Definition:**
One row in the first table can be related to many rows in the second table.

**Examples:**

* One Customer → Many Orders
* One Department → Many Employees
* One Teacher → Many Students

**Remember:**
One parent has many children.

### 3. Many-to-One (M:1)

**Definition:**
Many rows in the first table are related to one row in the second table.

**Examples:**

* Many Employees → One Department
* Many Orders → One Customer
* Many Students → One College

**Remember:**
Many children belong to one parent.

### 4. Many-to-Many (M:M)

**Definition:**
Many rows in one table are related to many rows in another table.

**Examples:**

* Many Students → Many Courses
* Many Doctors → Many Patients
* Many Customers → Many Products

**Note:**
A Junction (Bridge) table is required to connect both tables.

**Remember:**
Many on both sides.

# Joins

**Definition:**
Joins are used to combine data from two or more tables using a common column.

## INNER JOIN

**Definition:**
Returns only the matching rows from both tables.

**Example Syntax:**

SELECT *
FROM table1
INNER JOIN table2
ON table1.id = table2.id;

**Remember:**
Only matching records.

## LEFT JOIN

**Definition:**
Returns all rows from the left table and only matching rows from the right table. If there is no match, NULL is returned.

**Example Syntax:**

SELECT *
FROM table1
LEFT JOIN table2
ON table1.id = table2.id;

**Remember:**
Everything from the left table.

## RIGHT JOIN

**Definition:**
Returns all rows from the right table and only matching rows from the left table. If there is no match, NULL is returned.

**Example Syntax:**

SELECT *
FROM table1
RIGHT JOIN table2
ON table1.id = table2.id;

**Remember:**
Everything from the right table.

## FULL OUTER JOIN

**Definition:**
Returns all rows from both tables. Matching rows are combined and non-matching rows contain NULL values.

**Note:**
MySQL does not support FULL OUTER JOIN directly.

It can be achieved using:

LEFT JOIN
UNION
RIGHT JOIN

**Remember:**
Everything from both tables.

# Derived Table

**Definition:**
A derived table is a temporary table created using a SELECT query inside the FROM clause.

**Example:**

SELECT *
FROM (
SELECT customer_id, SUM(amount) AS total
FROM payment
GROUP BY customer_id
) AS temp;

**Remember:**

* Query inside FROM
* Acts like a temporary table
* Alias is mandatory

# Subquery

**Definition:**
A subquery is a query written inside another SQL query.

The inner query executes first and its result is used by the outer query.

**Example:**

SELECT *
FROM customer
WHERE customer_id IN (
SELECT customer_id
FROM payment
);

**Remember:**
Query inside another query.

# Derived Table vs Subquery

## Derived Table

* Used inside the FROM clause.
* Creates a temporary table.
* Alias is required.
* Can be joined like a normal table.

## Subquery

* Can be used inside WHERE, SELECT, FROM or HAVING.
* Returns a value or set of values.
* Helps the outer query execute.

# Quick Interview Revision

* **Cardinality** → Relationship between tables
* **1:1** → One matches one
* **1:M** → One parent has many children
* **M:1** → Many children belong to one parent
* **M:M** → Many on both sides (requires a Junction table)
* **INNER JOIN** → Only matching rows
* **LEFT JOIN** → All rows from the left table + matching rows from the right
* **RIGHT JOIN** → All rows from the right table + matching rows from the left
* **FULL OUTER JOIN** → All rows from both tables (Not directly supported in MySQL)
* **Derived Table** → Temporary table created from a query inside FROM
* **Subquery** → Query inside another query

# Easy Memory Tricks

* 1:1 → One ↔ One

* 1:M → One → Many

* M:1 → Many → One

* M:M → Many ↔ Many

* INNER → Only Matches

* LEFT → Keep Left

* RIGHT → Keep Right

* FULL → Keep Both

* Derived Table → Temporary Table

* Subquery → Query Inside Query


