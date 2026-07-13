## 1️⃣ COUNT()

**Purpose:** Counts rows or values.

| Function                 | What it Counts                |
| ------------------------ | ----------------------------- |
| `COUNT(*)`               | All rows (includes NULL rows) |
| `COUNT(column)`          | Only non-NULL values          |
| `COUNT(DISTINCT column)` | Unique non-NULL values        |

```sql
COUNT(*)
COUNT(email)
COUNT(DISTINCT state)
```

**📝 Remember**

* `*` → Everything
* `column` → Ignore NULL
* `DISTINCT` → Unique only

---

## 2️⃣ DISTINCT

**Purpose:** Removes duplicate values.

```sql
SELECT DISTINCT state
FROM customers;
```

Example

```
Before
CA
CA
NY
TX
NY

After
CA
NY
TX
```

**📝 Remember**

> DISTINCT = Unique values only

---

## 3️⃣ WHERE

**Purpose:** Filters rows.

```sql
WHERE state='CA'
```

### Comparison Operators

```
=
!=
<>
<
>
<=
>=
```

### Logical Operators

```
AND
OR
NOT
```

### IN

Instead of

```sql
state='CA'
OR state='NY'
OR state='TX'
```

Use

```sql
state IN ('CA','NY','TX')
```

### BETWEEN

```sql
points BETWEEN 1000 AND 3000
```

Same as

```sql
points >=1000
AND points <=3000
```

### NULL Check

```sql
IS NULL

IS NOT NULL
```

**📝 Remember**

WHERE filters **rows before grouping**.

---

## 4️⃣ LIMIT

Returns only the first **N** rows.

```sql
LIMIT 5;
```

**📝 Remember**

LIMIT = Restrict number of rows returned.

---

## 5️⃣ ORDER BY

Sorts data.

```sql
ORDER BY first_name;
```

Ascending (default)

```sql
ORDER BY salary DESC;
```

Descending

```sql
ORDER BY state, last_name;
```

Multiple columns

**📝 Remember**

* ASC → Small → Large (A → Z)
* DESC → Large → Small (Z → A)

---

## 6️⃣ NULL

NULL means

* Missing value
* Unknown value

NOT

* 0
* Empty string
* FALSE

Correct

```sql
WHERE email IS NULL;
```

```sql
WHERE email IS NOT NULL;
```

Wrong

```sql
WHERE email = NULL;
```

**📝 Remember**

Always use

```
IS NULL

IS NOT NULL
```

---

## 7️⃣ GROUP BY

Groups similar values together.

Without GROUP BY

```
CA
CA
NY
TX
```

With GROUP BY

```
CA
NY
TX
```

Example

```sql
SELECT state,
COUNT(*)
FROM customers
GROUP BY state;
```

Common Functions

```
COUNT()

SUM()

AVG()

MIN()

MAX()
```

**📝 Remember**

Without GROUP BY

➡ One result for entire table

With GROUP BY

➡ One result for each group

---

## 8️⃣ HAVING

Filters grouped results.

Wrong

```sql
WHERE COUNT(*) > 5;
```

Correct

```sql
GROUP BY state
HAVING COUNT(*) > 5;
```

### WHERE vs HAVING

| WHERE                  | HAVING                      |
| ---------------------- | --------------------------- |
| Filters rows           | Filters groups              |
| Before GROUP BY        | After GROUP BY              |
| No aggregate functions | Aggregate functions allowed |

**Execution**

```
WHERE
   ↓
GROUP BY
   ↓
HAVING
```

**📝 Remember**

WHERE → Individual rows

HAVING → Groups

---

## 9️⃣ LIKE (Wildcards)

### %

Any number of characters

```
'A%'     Starts with A

'%A'     Ends with A

'%A%'    Contains A

'Jo%'    Starts with Jo
```

### _

Exactly ONE character

```
'__'      Exactly 2 letters

'_a%'     Second letter is a
```

**📝 Remember**

```
%  → Many characters

_  → One character
```

---

# 🔟 SQL Execution Order ⭐

```
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
```

---

# 🎯 Interview Quick Revision

| Topic           | One Line to Remember      |
| --------------- | ------------------------- |
| COUNT(*)        | Counts all rows           |
| COUNT(column)   | Ignores NULL              |
| COUNT(DISTINCT) | Counts unique values      |
| DISTINCT        | Removes duplicates        |
| WHERE           | Filters rows              |
| GROUP BY        | Creates groups            |
| HAVING          | Filters groups            |
| ORDER BY        | Sorts rows                |
| LIMIT           | Limits output             |
| NULL            | Use IS NULL / IS NOT NULL |
| %               | Many characters           |
| _               | One character             |

---

# 🧠 Easy Flow to Remember

```
Need specific rows?
        ↓
WHERE

Need calculations?
        ↓
COUNT / SUM / AVG / MIN / MAX

Need calculations for each category?
        ↓
GROUP BY

Need to filter grouped results?
        ↓
HAVING

Need unique values?
        ↓
DISTINCT

Need sorted data?
        ↓
ORDER BY

Need only a few rows?
        ↓
LIMIT
