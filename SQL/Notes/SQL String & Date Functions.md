# SQL String & Date Functions

## 1. LENGTH()

**Purpose:** Counts the number of characters in a string.

Example:

SELECT LENGTH('Jasmithi');

Output:

8

---

## 2. CONCAT()

**Purpose:** Joins two or more strings.

Example:

SELECT CONCAT(first_name,' ',last_name);

Output:

John Smith

---

## 3. UPPER() / LOWER()

UPPER() → Converts text to uppercase.

LOWER() → Converts text to lowercase.

Examples:

SELECT UPPER(first_name);

SELECT LOWER(first_name);

---

## 4. REVERSE()

**Purpose:** Reverses a string.

Example:

SELECT REVERSE('Hello');

Output:

olleH

---

## 5. LEFT()

**Purpose:** Returns characters from the left side.

Example:

SELECT LEFT('Database',4);

Output:

Data

---

## 6. RIGHT()

**Purpose:** Returns characters from the right side.

Example:

SELECT RIGHT('Database',4);

Output:

base

---

## 7. SUBSTRING()

**Purpose:** Extracts part of a string.

Syntax:

SUBSTRING(column_name, start_position, length)

Example:

SELECT SUBSTRING('Jasmithi',1,4);

Output:

Jasm

Without length:

SELECT SUBSTRING('Jasmithi',5);

Output:

ithi

**Remember:** If length is not given, SQL reads until the end.

---

## 8. LOCATE()

**Purpose:** Finds the position of a character.

Example:

SELECT LOCATE('@','[jasmithi@gmail.com](mailto:jasmithi@gmail.com)');

Output:

9

### Extract Username

SELECT SUBSTRING(email,1,LOCATE('@',email)-1);

**Why -1?**

It reads everything before @.

### Extract Domain

SELECT SUBSTRING(email,LOCATE('@',email)+1);

**Why +1?**

It starts reading after @.

### Easy Trick

Before a symbol → LOCATE(symbol,column)-1

After a symbol → LOCATE(symbol,column)+1

---

## 9. REPLACE()

**Purpose:** Replaces one text with another.

Syntax:

REPLACE(original, find, replace_with)

Example:

SELECT REPLACE('banana','a','o');

Output:

bonono

Remove spaces:

SELECT REPLACE('Jasmithi Sri Karri',' ','');

Replace spaces with underscore:

SELECT REPLACE('Jasmithi Sri',' ','_');

Output:

Jasmithi_Sai

---

## 10. TRIM()

**Purpose:** Removes spaces from the beginning and end.

Example:

SELECT TRIM('   Hello   ');

Output:

Hello

---

## 11. Counting Characters (Interview Question)

Count the number of 'a' characters.

SELECT LENGTH(description) - LENGTH(REPLACE(description,'a',''))
FROM film;

### Logic

Original Length

↓

Remove all 'a'

↓

Find new Length

↓

Difference = Number of 'a'

Use the same logic to count vowels (a, e, i, o, u).

---

## 12. CASE Statement

**Purpose:** Works like an if-else statement.

Syntax:

CASE

WHEN condition THEN result

ELSE result

END

Example:

SELECT

CASE

WHEN amount > 100 THEN 'High'

ELSE 'Low'

END;

Multiple Conditions:

CASE

WHEN salary >=100000 THEN 'High'

WHEN salary >=50000 THEN 'Medium'

ELSE 'Low'

END

---

## 13. REGEXP

**Purpose:** Used for advanced searching.

Starts with A

WHERE first_name REGEXP '^A'

Ends with n

WHERE first_name REGEXP 'n$'

Starts with A or B

WHERE first_name REGEXP '^[AB]'

Ends with vowel

WHERE first_name REGEXP '[aeiou]$'

Contains "ar"

WHERE first_name REGEXP 'ar'

---

## LIKE vs REGEXP

LIKE is used for simple pattern matching.

Examples:

LIKE 'A%'

LIKE '%A%'

LIKE '_A'

REGEXP is used for advanced pattern matching.

Examples:

REGEXP '^A'

REGEXP '[AB]'

REGEXP '.*'

REGEXP '$'

---

# Date Functions

## 14. YEAR()

Returns the year.

Example:

SELECT YEAR(payment_date);

Output:

2005

---

## 15. MONTH()

Returns the month number.

Example:

SELECT MONTH(payment_date);

Output:

5

---

## 16. MONTHNAME()

Returns the month name.

Example:

SELECT MONTHNAME(payment_date);

Output:

May

---

## 17. WEEK()

Returns the week number.

Example:

SELECT WEEK(payment_date);

Output:

20

---

## 18. QUARTER()

Returns the quarter number (1–4).

Example:

SELECT QUARTER(payment_date);

Display as Q1, Q2...

SELECT CONCAT('Q',QUARTER(payment_date));

---

## 19. CURDATE()

Returns today's date.

Example:

SELECT CURDATE();

---

## 20. NOW()

Returns current date and time.

Example:

SELECT NOW();

---

## 21. DATEDIFF()

Returns the difference between two dates.

Example:

SELECT DATEDIFF('2026-12-31','2026-07-12');

Output:

172

Meaning:

172 days

---

## 22. Leap Year Logic

A year is a leap year if:

* Divisible by 400

OR

* Divisible by 4
* Not divisible by 100

SQL:

CASE

WHEN year % 400 = 0

OR (year % 4 = 0 AND year % 100 <> 0)

THEN 'Leap Year'

ELSE 'Not Leap Year'

END

---

## 23. Days Remaining in Current Year

SELECT DATEDIFF(

CONCAT(YEAR(CURDATE()),'-12-31'),

CURDATE()

);

---

## 24. GROUP BY Dates

Month-wise

GROUP BY MONTH(payment_date)

Year-wise

GROUP BY YEAR(payment_date)

Week-wise

GROUP BY WEEK(payment_date)

Quarter-wise

GROUP BY QUARTER(payment_date)

---

# Most Important Interview Patterns

### Extract Username

SELECT SUBSTRING(email,1,LOCATE('@',email)-1);

---

### Extract Domain

SELECT SUBSTRING(email,LOCATE('@',email)+1);

---

### Count Character Occurrences

LENGTH(column)

*

LENGTH(REPLACE(column,'a',''))

---

### Replace Text

REPLACE(column,'old','new')

---

### Total Payment by Month

GROUP BY YEAR(payment_date), MONTH(payment_date)

---

### Total Payment by Year

GROUP BY YEAR(payment_date)

---

### Total Payment by Week

GROUP BY WEEK(payment_date)

---

### Display Quarter

CONCAT('Q',QUARTER(payment_date))

---

# Quick Revision

| Function    | Purpose                           |
| ----------- | --------------------------------- |
| LENGTH()    | Count characters                  |
| CONCAT()    | Join strings                      |
| UPPER()     | Convert to uppercase              |
| LOWER()     | Convert to lowercase              |
| LEFT()      | Return left characters            |
| RIGHT()     | Return right characters           |
| SUBSTRING() | Extract text                      |
| LOCATE()    | Find character position           |
| REPLACE()   | Replace text                      |
| TRIM()      | Remove extra spaces               |
| REVERSE()   | Reverse text                      |
| REGEXP      | Advanced searching                |
| YEAR()      | Return year                       |
| MONTH()     | Return month number               |
| MONTHNAME() | Return month name                 |
| WEEK()      | Return week number                |
| QUARTER()   | Return quarter                    |
| CURDATE()   | Today's date                      |
| NOW()       | Current date & time               |
| DATEDIFF()  | Difference between two dates      |
| CASE        | SQL if-else                       |
| %           | Modulus (used in leap year logic) |
