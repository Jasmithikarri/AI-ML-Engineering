# SQL Notes - CTE, Recursive CTE, Temporary Tables, Stored Procedures & Views

## CTE (Common Table Expression)

### What is CTE?

A temporary named result set created using the **WITH** keyword. Exists only for one query.

### Why use it?

* Simplifies complex queries
* Avoids repeating subqueries
* Improves readability

### Syntax

WITH cte_name AS (
SELECT ...
)

SELECT *
FROM cte_name;

### Remember

* Created using **WITH**
* Exists for one query
* Cannot be reused later

---

## Recursive CTE

### What is it?

A CTE that calls itself until a condition becomes false.

### Used for

* Employee hierarchy
* Organization hierarchy
* Folder structure
* Family tree
* Number generation

### Parts

* Anchor Query
* Recursive Query

### Remember

* Uses **UNION ALL**
* Stops when the condition becomes false

---

## Temporary Table

### What is it?

A table that stores data temporarily for the current session.

### Why use it?

* Store intermediate data
* Break large queries
* Reuse temporary results

### Remember

* Session scope
* Automatically deleted when the session ends
* Stores data temporarily

---

## Stored Procedure

### What is it?

A saved SQL program stored in the database.

### Why use it?

* Reuse SQL
* Automate repeated tasks
* Improve performance
* Easier maintenance

### Parameters

* **IN** → Input value
* **OUT** → Returns value
* **INOUT** → Input + Output

### Remember

* Created once
* Run using **CALL**
* Can contain multiple SQL statements

---

## View

### What is it?

A virtual table that stores only the SQL query.

### Why use it?

* Simplify queries
* Hide columns
* Improve security
* Reuse SQL

### Remember

* Virtual table
* Doesn't store data
* Always shows the latest data

---

## Scope

| Object           | Scope                     |
| ---------------- | ------------------------- |
| CTE              | One query                 |
| Temporary Table  | Current session           |
| Stored Procedure | Permanent (until dropped) |
| View             | Permanent (until dropped) |

---

## Stored Procedure vs Dynamic Stored Procedure

| Stored Procedure | Dynamic Stored Procedure     |
| ---------------- | ---------------------------- |
| Fixed SQL        | SQL changes at runtime       |
| Same logic       | Query changes based on input |
| Repeated tasks   | Dynamic search/reporting     |

---

## ETL Pipeline

Extract
↓
Transform
↓
Load
↓
Stored Procedure
↓
Validation
↓
Reporting

Stored Procedure is mainly used to:

* Validate data
* Remove duplicates
* Merge records
* Update target tables
* Calculate KPIs
* Generate reports

---

## Interview Questions

**What is Scope?**

* Scope means how long an object exists and where it can be used.

**Why do we use Parameters?**

* To make one stored procedure reusable with different input values.

**Why not write SQL every time?**

* Because applications call the same procedure many times with different values.

**Can we use CTE inside a Stored Procedure?**

* Yes.

**Can we use View inside a Stored Procedure?**

* Yes.

**Can we use Temporary Table inside a Stored Procedure?**

* Yes.

**Difference between JOIN and Parameter**

* JOIN combines tables.
* Parameter passes different input values.

**Where is Stored Procedure used?**

* ETL
* Payroll
* Banking
* Finance reports
* Daily reports
* Data validation
* KPI calculations

**Where is Dynamic Stored Procedure used?**

* Search pages
* Admin dashboards
* Banking transaction search
* Hospital patient search
* E-commerce product filters
* Dynamic reports

---

## Quick Revision

* CTE → Temporary query (WITH)
* Recursive CTE → CTE that calls itself
* Temporary Table → Temporary storage (session)
* Stored Procedure → Saved SQL program (CALL)
* Dynamic Stored Procedure → Stored procedure with Dynamic SQL
* View → Virtual table
* Scope → Lifetime of an object
* Parameter → Makes stored procedures reusable
* ETL → Extract → Transform → Load → Stored Procedure → Validation → Reporting

