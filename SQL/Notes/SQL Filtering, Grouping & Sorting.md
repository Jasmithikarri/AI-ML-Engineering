# SQL Query Basics & Filtering

## COUNT()

Used to count rows or values.

* COUNT(*) → Counts all rows.
* COUNT(column) → Counts only non-NULL values.
* COUNT(DISTINCT column) → Counts unique values.

Examples:

COUNT(*)

COUNT(email)

COUNT(DISTINCT state)

**Remember:**

* `*` → All rows
* `column` → Ignores NULL values
* `DISTINCT` → Unique values only

## DISTINCT

Used to remove duplicate values.

Example:

SELECT DISTINCT state
FROM customers;

**Remember:** DISTINCT returns only unique values.

## WHERE

Used to filter rows.

Example:

WHERE state = 'CA'

Comparison Operators:

=

!=

<>

<

>

<=

> =

Logical Operators:

AND

OR

NOT

Using IN:

Instead of writing:

state = 'CA'

OR state = 'NY'

OR state = 'TX'

Use:

state IN ('CA','NY','TX')

Using BETWEEN:

points BETWEEN 1000 AND 3000

Same as:

points >= 1000

AND

points <= 3000

Checking NULL values:

IS NULL

IS NOT NULL

**Remember:** WHERE filters rows before GROUP BY.

## LIMIT

Returns only the required number of rows.

Example:

LIMIT 5;

**Remember:** LIMIT controls the number of rows displayed.

## ORDER BY

Used to sort data.

Ascending:

ORDER BY first_name;

Descending:

ORDER BY salary DESC;

Multiple columns:

ORDER BY state, last_name;

**Remember:**

* ASC → A to Z / Small to Large
* DESC → Z to A / Large to Small

## NULL

NULL means the value is missing or unknown.

NULL is not:

* 0
* Empty string
* FALSE

Correct:

WHERE email IS NULL;

WHERE email IS NOT NULL;

Wrong:

WHERE email = NULL;

**Remember:** Always use IS NULL or IS NOT NULL.

## GROUP BY

Groups similar values together.

Example:

SELECT state, COUNT(*)

FROM customers

GROUP BY state;

Common aggregate functions:

COUNT()

SUM()

AVG()

MIN()

MAX()

**Remember:**

* Without GROUP BY → One result for the whole table.
* With GROUP BY → One result for each group.

## HAVING

Used to filter grouped results.

Wrong:

WHERE COUNT(*) > 5;

Correct:

GROUP BY state

HAVING COUNT(*) > 5;

**WHERE vs HAVING**

WHERE

* Filters rows
* Runs before GROUP BY
* Aggregate functions are not allowed

HAVING

* Filters groups
* Runs after GROUP BY
* Aggregate functions are allowed

Execution:

WHERE

↓

GROUP BY

↓

HAVING

**Remember:**

* WHERE → Rows
* HAVING → Groups

## LIKE

Used for pattern matching.

% → Any number of characters

Examples:

'A%' → Starts with A

'%A' → Ends with A

'%A%' → Contains A

'Jo%' → Starts with Jo

_ → Exactly one character

Examples:

'__' → Exactly 2 characters

'_a%' → Second character is 'a'

**Remember:**

* `%` → Many characters
* `_` → One character

## SQL Execution Order

FROM

↓

WHERE

↓

GROUP BY

↓

HAVING

↓

SELECT

↓

DISTINCT

↓

ORDER BY

↓

LIMIT

**Tip:** We write SELECT first, but SQL executes FROM first.

## Quick Revision

| Function        | Purpose                   |
| --------------- | ------------------------- |
| COUNT(*)        | Counts all rows           |
| COUNT(column)   | Counts non-NULL values    |
| COUNT(DISTINCT) | Counts unique values      |
| DISTINCT        | Removes duplicate values  |
| WHERE           | Filters rows              |
| GROUP BY        | Groups data               |
| HAVING          | Filters grouped data      |
| ORDER BY        | Sorts data                |
| LIMIT           | Limits the output         |
| NULL            | Use IS NULL / IS NOT NULL |
| LIKE            | Pattern matching          |
| %               | Many characters           |
| _               | One character             |

## Easy Way to Remember

Need to filter rows?

→ WHERE

Need calculations?

→ COUNT(), SUM(), AVG(), MIN(), MAX()

Need calculations for each category?

→ GROUP BY

Need to filter grouped results?

→ HAVING

Need unique values?

→ DISTINCT

Need sorted data?

→ ORDER BY

Need only a few rows?

→ LIMIT


