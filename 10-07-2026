
# 1. LENGTH()

**Purpose:** Counts the number of characters in a string.

```sql
SELECT LENGTH('Jasmithi');
```

Output:

```text
8
```

---

# 2. CONCAT()

**Purpose:** Joins strings.

```sql
SELECT CONCAT(first_name,' ',last_name);
```

Output

```text
John Smith
```

---

# 3. UPPER() / LOWER()

Convert text to uppercase or lowercase.

```sql
SELECT UPPER(first_name);
SELECT LOWER(first_name);
```

---

# 4. REVERSE()

Reverse a string.

```sql
SELECT REVERSE('Hello');
```

Output

```text
olleH
```

---

# 5. LEFT()

Take characters from the left.

```sql
SELECT LEFT('Database',4);
```

Output

```text
Data
```

---

# 6. RIGHT()

Take characters from the right.

```sql
SELECT RIGHT('Database',4);
```

Output

```text
base
```

---

# 7. SUBSTRING()

Extract part of a string.

Syntax

```sql
SUBSTRING(string,start,length)
```

Example

```sql
SELECT SUBSTRING('Jasmithi',1,4);
```

Output

```text
Jasm
```

If you omit the length:

```sql
SELECT SUBSTRING('Jasmithi',5);
```

Output

```text
ithi
```

Starts at position 5 and reads till the end.

---

# 8. LOCATE()

Finds the position of a character.

```sql
SELECT LOCATE('@','jasmithi@gmail.com');
```

Output

```text
9
```

---

## LOCATE + SUBSTRING (Very Important)

### Extract username

```sql
SELECT SUBSTRING(email,1,LOCATE('@',email)-1);
```

Why `-1`?

```text
jasmithi@gmail.com

@ is at position 9

9-1 = 8

Read first 8 characters
```

Output

```text
jasmithi
```

---

### Extract domain

```sql
SELECT SUBSTRING(email,LOCATE('@',email)+1);
```

Why `+1`?

```text
@ is position 9

9+1 = 10

Start reading from 10
```

Output

```text
gmail.com
```

---

# Easy Trick

Need text **before** a symbol?

```sql
LOCATE(symbol,column)-1
```

Need text **after** a symbol?

```sql
LOCATE(symbol,column)+1
```

---

# 9. REPLACE()

Replace text.

Syntax

```sql
REPLACE(original,find,replace_with)
```

Example

```sql
SELECT REPLACE('banana','a','o');
```

Output

```text
bonono
```

Remove spaces

```sql
SELECT REPLACE('Jasmithi Sai Karri',' ','');
```

Output

```text
JasmithiSaiKarri
```

Replace spaces

```sql
SELECT REPLACE('Jasmithi Sai',' ','_');
```

Output

```text
Jasmithi_Sai
```

---

# 10. TRIM()

Removes spaces from beginning and end.

```sql
SELECT TRIM('   Hello   ');
```

Output

```text
Hello
```

---

# 11. Counting Characters (Interview Favorite)

Count 'a'

```sql
SELECT
LENGTH(description)
-
LENGTH(REPLACE(description,'a',''))
FROM film;
```

Logic

```text
Original length

-

Length after removing 'a'

=

Number of a's
```

---

Count vowels

```sql
a

LENGTH()-LENGTH(REPLACE())

e

LENGTH()-LENGTH(REPLACE())

i

LENGTH()-LENGTH(REPLACE())

o

LENGTH()-LENGTH(REPLACE())

u

LENGTH()-LENGTH(REPLACE())
```

---

# 12. CASE Statement

SQL's if-else.

```sql
CASE
WHEN condition THEN result
ELSE result
END
```

Example

```sql
SELECT
CASE
WHEN amount>100 THEN 'High'
ELSE 'Low'
END;
```

---

Multiple conditions

```sql
CASE
WHEN salary>=100000 THEN 'High'
WHEN salary>=50000 THEN 'Medium'
ELSE 'Low'
END
```

---

# 13. REGEXP

Advanced searching.

Starts with A

```sql
WHERE first_name REGEXP '^A'
```

Ends with n

```sql
WHERE first_name REGEXP 'n$'
```

Starts with A or B

```sql
WHERE first_name REGEXP '^[AB]'
```

Ends with vowel

```sql
WHERE first_name REGEXP '[aeiou]$'
```

Contains "ar"

```sql
WHERE first_name REGEXP 'ar'
```

---

# LIKE vs REGEXP

LIKE

```sql
'A%'
'%A%'
'_A'
```

Simple searching.

REGEXP

```sql
'^A'

'[AB]'

'.*'

'$'
```

Advanced searching.

---

# 14. YEAR()

Returns year.

```sql
SELECT YEAR(payment_date);
```

Output

```text
2005
```

---

# 15. MONTH()

Returns month number.

```sql
SELECT MONTH(payment_date);
```

Output

```text
5
```

---

# 16. MONTHNAME()

Returns month name.

```sql
SELECT MONTHNAME(payment_date);
```

Output

```text
May
```

---

# 17. WEEK()

Returns week number.

```sql
SELECT WEEK(payment_date);
```

Output

```text
20
```

---

# 18. QUARTER()

Returns quarter.

```sql
SELECT QUARTER(payment_date);
```

Output

```text
1

or

2

or

3

or

4
```

Display as Q1,Q2,Q3,Q4

```sql
SELECT CONCAT('Q',QUARTER(payment_date));
```

---

# 19. CURDATE()

Returns today's date.

```sql
SELECT CURDATE();
```

Example

```text
2026-07-12
```

---

# 20. NOW()

Returns current date and time.

```sql
SELECT NOW();
```

Example

```text
2026-07-12 09:45:31
```

---

# 21. DATEDIFF()

Difference between two dates.

```sql
SELECT DATEDIFF('2026-12-31','2026-07-12');
```

Output

```text
172
```

Meaning

```text
172 days
```

---

# 22. Leap Year Logic

A year is leap year if

```text
Divisible by 400

OR

Divisible by 4

AND

Not divisible by 100
```

SQL

```sql
CASE

WHEN year%400=0

OR

(year%4=0 AND year%100<>0)

THEN 'Leap Year'

ELSE 'Not Leap Year'

END
```

---

# 23. Days Remaining in Current Year

```sql
SELECT DATEDIFF(
CONCAT(YEAR(CURDATE()),'-12-31'),
CURDATE()
);
```

---

# 24. GROUP BY with Dates

Month-wise

```sql
GROUP BY MONTH(payment_date)
```

Year-wise

```sql
GROUP BY YEAR(payment_date)
```

Week-wise

```sql
GROUP BY WEEK(payment_date)
```

Quarter-wise

```sql
GROUP BY QUARTER(payment_date)
```

---

# 🎯 Most Important Interview Patterns

### Extract username

```sql
SUBSTRING(email,1,LOCATE('@',email)-1)
```

---

### Extract domain

```sql
SUBSTRING(email,LOCATE('@',email)+1)
```

---

### Count occurrences of a character

```sql
LENGTH(column)

-

LENGTH(REPLACE(column,'a',''))
```

---

### Replace text

```sql
REPLACE(column,'old','new')
```

---

### Total payment by month

```sql
GROUP BY YEAR(date), MONTH(date)
```

---

### Total payment by year

```sql
GROUP BY YEAR(date)
```

---

### Total payment by week

```sql
GROUP BY WEEK(date)
```

---

### Quarter

```sql
CONCAT('Q',QUARTER(date))
```

---

# 🧠 Easy Memory Sheet

| Function      | Purpose                        |
| ------------- | ------------------------------ |
| `LENGTH()`    | Count characters               |
| `CONCAT()`    | Join strings                   |
| `UPPER()`     | Uppercase                      |
| `LOWER()`     | Lowercase                      |
| `LEFT()`      | Left characters                |
| `RIGHT()`     | Right characters               |
| `SUBSTRING()` | Extract text                   |
| `LOCATE()`    | Find position                  |
| `REPLACE()`   | Replace text                   |
| `TRIM()`      | Remove leading/trailing spaces |
| `REVERSE()`   | Reverse text                   |
| `REGEXP`      | Advanced search                |
| `YEAR()`      | Year                           |
| `MONTH()`     | Month number                   |
| `MONTHNAME()` | Month name                     |
| `WEEK()`      | Week number                    |
| `QUARTER()`   | Quarter (1–4)                  |
| `CURDATE()`   | Today's date                   |
| `NOW()`       | Current date & time            |
| `DATEDIFF()`  | Days between dates             |
| `CASE`        | SQL if–else                    |
| `%`           | Remainder (used for leap year) |


