# Python Notes -- Data Types, Variables, Input, Operators & Conditional Statements

## Data Types

### Integer (`int`)

-   Stores whole numbers.
-   Example: x = 10 print(type(x)) Output: `<class 'int'>`

### Float (`float`)

-   Stores decimal numbers.
-   Example: x = 1.234 print(type(x)) Output: `<class 'float'>`

### Boolean (`bool`)

-   Stores only `True` or `False`.
-   Used in conditions.
-   Example: is_student = True print(type(is_student))

### String (`str`)

-   Stores text inside single or double quotes.
-   Example: name = "Jasmithi" print(type(name))

### Complex (`complex`)

-   Stores imaginary numbers.
-   Example: num = 2 + 3j print(type(num))

------------------------------------------------------------------------

## Type Conversion

### Implicit Type Conversion

Python converts data types automatically.

Example:

a = 5 b = 1.5 c = a + b print(c)

Output: `6.5`

### Explicit Type Conversion

Programmer converts the data type manually.

Example:

age = "25" age = int(age) print(type(age))

Common functions: - int() - float() - str() - bool()

------------------------------------------------------------------------

## Variables

Variables store values.

Example:

name = "John" age = 24 salary = 50000

### Variable Rules

-   Can contain letters, numbers and `_`
-   Cannot start with a number
-   No spaces
-   No special characters
-   Cannot use Python keywords

Valid: - student_name - age1 - total_marks

Invalid: - 1age - student name - @name - class

------------------------------------------------------------------------

## Dynamic Typing

Python is dynamically typed.

The variable type depends on the value assigned.

Example:

x = 10 print(type(x))

x = 10.5 print(type(x))

x = "Python" print(type(x))

x = True print(type(x))

------------------------------------------------------------------------

## Input Function

Used to take input from the user.

Example:

name = input("Enter your name:") print(name)

By default, `input()` returns a string.

Integer input:

age = int(input("Enter age:"))

Float input:

salary = float(input("Enter salary:"))

------------------------------------------------------------------------

## Arithmetic Operators

Assume:

a = 10

b = 4

Addition

result = a + b print(result)

Subtraction

result = a - b print(result)

Multiplication

result = a \* b print(result)

Division

result = a / b print(result)

Floor Division

result = a // b print(result)

Modulus

result = a % b print(result)

Power

result = a \*\* b print(result)

------------------------------------------------------------------------

## Print Statement

Normal Print

name = "John" print("Hello", name)

Format Printing

name = "John" age = 25

print("My name is {} and I am {} years old.".format(name, age))

------------------------------------------------------------------------

## Conditional Statements

### if

age = 18

if age \>= 18: print("Eligible to vote")

### if...else

age = 16

if age \>= 18: print("Eligible") else: print("Not Eligible")

### if...elif...else

marks = 85

if marks \>= 90: print("Grade A") elif marks \>= 75: print("Grade B")
elif marks \>= 50: print("Grade C") else: print("Fail")

Python checks conditions from top to bottom. The first True condition is
executed. If no condition is True, the else block runs.


## Summary

-   int → Whole numbers
-   float → Decimal numbers
-   bool → True or False
-   str → Text
-   complex → Imaginary numbers
-   Python supports implicit and explicit type conversion.
-   Python is dynamically typed.
-   input() returns a string by default.
-   Operators: +, -, \*, /, //, %, \*\*
-   format() is used for dynamic printing.
-   if, elif and else are used for decision making.
