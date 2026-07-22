**Python Notes – Strings & Lists**

**Containers in Python**

Containers are used to store data.

Common containers:

* String
* List
* Tuple
* Set
* Dictionary

---

**String**

**What is a String?**

A string is a sequence of characters enclosed in single quotes (' ') or double quotes (" ").

Examples:

name = "Jasmithi"

city = 'Hyderabad'

A sentence is still considered one string.

Example:

msg = "I Love Python"

---

**Properties of Strings**

* Ordered
* Indexed
* Immutable (Cannot be changed after creation)

---

**Indexing**

Every character has an index.

Word = Python

Positive Index:

P → 0

y → 1

t → 2

h → 3

o → 4

n → 5

Negative Index:

P → -6

y → -5

t → -4

h → -3

o → -2

n → -1

Access characters:

word[0] → P

word[-1] → n

---

**Slicing**

Syntax:

variable[start:end]

Example:

text = "I Love Python"

text[2:6]

Output:

Love

---

**Reverse a String**

Use:

text[::-1]

Example:

"Python"[::-1]

Output:

nohtyP

---

**Immutable**

Strings cannot be modified after creation.

Wrong:

name = "Hello"

name[0] = "Y"

This gives a TypeError.

Correct:

name = "Hello"

name = "Yello"

Instead of modifying the old string, Python creates a new string.

---

**String Multiplication**

Repeat a string multiple times.

Example:

"A" * 5

Output:

AAAAA

---

**split()**

Used to split a string.

By default, it splits at spaces.

Example:

text = "I Love Python"

text.split()

Output:

['I', 'Love', 'Python']

Custom separator:

text = "Apple,Mango,Grapes"

text.split(",")

Output:

['Apple', 'Mango', 'Grapes']

---

**partition()**

Splits a string into three parts.

Example:

text = "I Love Python"

text.partition("Love")

Output:

('I ', 'Love', ' Python')

Difference:

* split() removes the separator.
* partition() keeps the separator.

---

**endswith()**

Checks whether a string ends with a specific character or word.

Example:

text = "Hello!"

text.endswith("!")

Output:

True

text.endswith("?")

Output:

False

---

**List**

**What is a List?**

A list stores multiple values.

Lists can store different data types together.

Example:

data = [1, "Python", 3.5, True]

---

**Properties of Lists**

* Ordered
* Indexed
* Mutable (Can be modified)

---

**Creating a List**

numbers = [1,2,3,4,5]

Mixed List:

data = [1, "Apple", 5.5, True]

---

**List Indexing**

numbers[0]

Output:

1

---

**List Slicing**

numbers[1:4]

Output:

[2,3,4]

---

**Nested List**

A list can contain another list.

Example:

matrix = [
[1,2,3],
[4,5,6],
[7,8,9]
]

Access a value:

matrix[1][2]

Output:

6

Explanation:

* matrix[1] gives the second list.
* [2] gives the third element.

---

**List Repetition**

[1,2] * 3

Output:

[1,2,1,2,1,2]

---

**append()**

Adds an element to the end of the list.

Example:

numbers = [1,2,3]

numbers.append(4)

Output:

[1,2,3,4]

---

**pop()**

Removes an element by index.

Example:

numbers = [10,20,30]

numbers.pop()

Output:

30

Remaining List:

[10,20]

---

**remove()**

Removes a specific value.

Example:

numbers = [10,20,30]

numbers.remove(20)

Output:

[10,30]

---

**reverse()**

Reverses the list.

Example:

numbers = [1,2,3]

numbers.reverse()

Output:

[3,2,1]

---

**sort()**

Sorts the list in ascending order.

Example:

numbers = [5,2,8,1]

numbers.sort()

Output:

[1,2,5,8]

---

**List Comprehension**

Used to create a list in one line.

Normal Method:

result = []

for i in range(5):

```
result.append(i)
```

List Comprehension:

result = [i for i in range(5)]

Output:

[0,1,2,3,4]

With Condition:

numbers = [12,47,91,18]

result = [i for i in numbers if i != 91 and i != 18]

Output:

[12,47]

---

**String vs List**

**String**

* Stores characters
* Immutable
* Ordered
* Indexed
* Cannot store different data types

**List**

* Stores multiple values
* Mutable
* Ordered
* Indexed
* Can store different data types

---

**When to Use String?**

Use a string when storing:

* Name
* Address
* Email
* Password
* Sentence
* Paragraph

Example:

name = "Jasmithi"

---

**When to Use List?**

Use a list when storing:

* Student names
* Employee IDs
* Shopping cart items
* Marks
* Products
* Cities
* Movies

Example:

students = ["John", "Sam", "David"]

---

**Interview Questions**

**1. What is the difference between String and List?**

**String**

* Stores only characters
* Immutable

**List**

* Stores multiple values
* Mutable

---

**2. What is Slicing?**

Slicing is used to extract a part of a string or list.

Syntax:

variable[start:end]

---

**3. What is List Comprehension?**

List comprehension is a shorter way to create a list in a single line.

---

**4. What is the difference between split() and partition()?**

**split()**

* Returns a list
* Removes the separator

**partition()**

* Returns a tuple
* Keeps the separator
