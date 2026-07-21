**Python Notes – Collections, Loops, Range, Break & Continue**

---

**Collections**

Collections are used to store multiple values in a single variable.

**Types of Collections**

* List
* Tuple
* Set
* Dictionary

**Why do we use Collections?**

* Store multiple values
* Access data
* Update data
* Perform operations on multiple values

**Example**

List: [10, 20, 30]

Tuple: (10, 20, 30)

Set: {10, 20, 30}

Dictionary: {"Name":"John", "Age":25}

---

**Loops**

A loop is used to repeat the same task multiple times instead of writing the same code again and again.

**Types of Loops**

* For Loop
* While Loop

---

**For Loop**

A For Loop is used when you know how many times the loop should run.

**Syntax**

for variable in collection:

**Example 1**

Print numbers from 1 to 5

for i in range(1,6):
print(i)

Output

1

2

3

4

5

**Example 2**

Print names from a list

names = ["Ram", "Sam", "John"]

for name in names:
print(name)

Output

Ram

Sam

John

---

**Range Function**

The range() function generates a sequence of numbers.

**Syntax**

range(start, stop, step)

**Parameters**

* Start → Starting number
* Stop → Ending number (Not Included)
* Step → Increment or Decrement value

**Example 1**

range(1,6)

Output

1 2 3 4 5

**Example 2**

range(1,11,2)

Output

1 3 5 7 9

**Example 3**

range(10,0,-1)

Output

10 9 8 7 6 5 4 3 2 1

**Remember**

* The stop value is never included.
* Use a negative step for reverse order.

---

**Index**

An index is the position of an element in a collection.

* Index starts from 0.

**Example**

fruits = ["Apple", "Banana", "Mango"]

Apple → Index 0

Banana → Index 1

Mango → Index 2

Accessing an element

fruits[1]

Output

Banana

---

**While Loop**

A While Loop is used when you don't know how many times the loop should run.

The loop continues until the condition becomes False.

**Example**

i = 1

while i <= 5:
print(i)
i = i + 1

Output

1

2

3

4

5

---

**Break Statement**

The break statement immediately stops the loop.

**When to Use**

* When a required condition is met.
* When you want to exit the loop early.

**Example**

for i in range(1,10):
if i == 5:
break
print(i)

Output

1

2

3

4

---

**Continue Statement**

The continue statement skips the current iteration and moves to the next iteration.

**When to Use**

* When you want to ignore a specific value without stopping the loop.

**Example**

for i in range(1,6):
if i == 3:
continue
print(i)

Output

1

2

4

5

---

**Break with User Input**

Keep asking the user for input until "stop" is entered.

value = ""

while value != "stop":
value = input("Enter Value: ")

print("Loop Ended")

---

**Continue with String**

Skip the character "h".

word = "Python"

for ch in word:
if ch == "h":
continue
print(ch)

Output

P

y

t

o

n

---

**Login Example**

email = input("Enter Email: ")

password = input("Enter Password: ")

if email == "[admin@gmail.com](mailto:admin@gmail.com)" and password == "1234":
print("Login Successful")
else:
print("Invalid Email or Password")

---

**Key Points**

* Collections store multiple values.
* Python collections are List, Tuple, Set, and Dictionary.
* Use a For Loop when the number of iterations is known.
* Use a While Loop when the number of iterations is unknown.
* range(start, stop, step) generates a sequence of numbers.
* The stop value is never included.
* Index starts from 0.
* Break exits the loop immediately.
* Continue skips the current iteration.
* While True is commonly used for continuous user input until a condition is met.
