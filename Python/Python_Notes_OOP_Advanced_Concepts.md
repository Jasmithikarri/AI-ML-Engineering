**Python Notes – Object-Oriented Programming (Advanced Concepts)**

**Encapsulation**

Definition:

Encapsulation is the process of wrapping data (attributes) and methods (functions) into a single class while hiding the internal implementation from the outside world.

Important Points:

* Protects the internal data of an object.
* Users interact only with the required methods.
* Prevents direct access to sensitive information.
* Improves security and maintainability.

Real-Life Example:

Think of a car.

* A car has an engine inside it.
* You only turn the key or press the Start button.
* You don't manually start the engine yourself.
* The internal working of the engine is hidden.

This is called encapsulation because the engine's internal logic is protected.

---

**Composition**

Definition:

Composition is a relationship where one class contains another class as a part of itself.

Important Points:

* Helps build complex objects using smaller objects.
* One object depends on another object.
* Promotes code reusability.
* Works together with encapsulation.

Real-Life Example:

A Car has an Engine.

* The Car object contains an Engine object.
* When you call the Car's start() method, it internally calls the Engine's start() method.
* The user only starts the car without knowing the engine's internal process.

Flow:

* User starts the car.
* Car calls the Engine.
* Engine starts.
* Car becomes ready to drive.

---

**Object Reference in Python**

Definition:

In Python, variables store references to objects instead of storing the actual data.

Important Points:

* Multiple variables can refer to the same object.
* Assigning one variable to another usually creates another reference, not a new copy.
* A new object is created only when required.

Example:

* Two variables pointing to the same list share the same object in memory.

---

**Dynamic Typing**

Definition:

Python is a dynamically typed language, meaning you do not need to declare the data type of a variable.

Important Points:

* Variable types are decided at runtime.
* The same variable can store different data types.
* Makes coding faster and easier.

Example:

* A variable can first store a number and later store a string.

---

**Method Parameters**

Definition:

Methods and functions can receive values as parameters during execution.

Important Points:

* Makes functions reusable.
* Accepts different input values every time.
* Produces different outputs based on the inputs.

Example:

A function that adds two numbers can work with any numbers passed to it.

---

**Four Pillars of Object-Oriented Programming**

Python supports four major OOP concepts:

* Abstraction
* Encapsulation
* Inheritance
* Polymorphism

These concepts help build reusable, secure, and maintainable applications.

---

**Global Variable**

Definition:

A global variable is declared outside all functions and classes.

Important Points:

* Can be accessed throughout the program.
* Available to all functions unless restricted.
* Should be used carefully to avoid unexpected changes.

Example:

A company name used throughout an application.

---

**Class Variable**

Definition:

A class variable is shared by all objects of a class.

Important Points:

* Only one copy exists.
* Every object accesses the same value.
* Changing it affects all instances.
* Accessed using the class name or cls inside class methods.

Example:

If a class keeps track of the total number of students, every new object updates the same count.

---

**Instance Variable**

Definition:

An instance variable belongs to a specific object.

Important Points:

* Each object has its own copy.
* Changes affect only that object.
* Usually created using self.

Example:

Each student object has its own name and roll number.

---

**Class Method**

Definition:

A class method works with class variables instead of instance variables.

Important Points:

* Uses cls as its first parameter.
* Can access and modify class variables.
* Cannot directly access instance variables.

Example:

Updating the total number of employees in a company.

---

**Static Method**

Definition:

A static method belongs to the class but does not use class variables or instance variables.

Important Points:

* Independent of object data.
* Used for utility functions.
* Does not use self or cls.

Example:

* Mathematical calculations
* Unit conversions
* Helper functions

---

**Decorators**

Definition:

A decorator modifies or extends the behavior of a function without changing its original code.

Important Points:

* Adds extra functionality.
* Makes code reusable.
* Keeps the original function unchanged.
* Commonly used for logging, validation, timing, and authentication.

Real-Life Example:

Think of changing a person's behavior temporarily without changing who they are. Similarly, a decorator changes how a function behaves without modifying the function itself.

---

**Single Responsibility Principle (SRP)**

Definition:

A class should have only one responsibility or one reason to change.

Important Points:

* Keep one responsibility per class.
* Makes code easier to maintain.
* Improves readability.
* Reduces complexity.

Bad Design:

A single class:

* Generates a report.
* Saves the report.
* Prints the report.

Good Design:

Separate classes:

* ReportGenerator
* FileSaver
* ReportPrinter

Each class performs only one job.

---

**Creating Objects (Instances)**

Definition:

An object is an instance of a class.

Important Points:

* Objects are created from classes.
* Each object has its own data.
* Objects use methods defined inside the class.

Real-Life Example:

Blueprint → Class

House built from blueprint → Object

---

**When to Use Object-Oriented Programming**

Use OOP when:

* Building large applications.
* Managing related data and functions together.
* Reusing code through classes.
* Improving code organization and maintenance.

---

**When OOP May Not Be Necessary**

For small scripts or simple data-processing tasks:

* Procedural programming may be simpler.
* If data only flows through a sequence of steps without maintaining object state, creating many classes may add unnecessary complexity.
* Simple scripts for analysis or one-time data processing often do not require extensive object-oriented design.

---

**Summary**

* Encapsulation hides internal implementation.
* Composition builds one class using another class.
* Python stores object references in memory.
* Python is dynamically typed.
* Class variables are shared across all objects.
* Instance variables belong to individual objects.
* Class methods use cls.
* Static methods are utility methods.
* Decorators modify function behavior without changing the original function.
* Follow the Single Responsibility Principle to keep classes clean and maintainable.
* Create objects from classes to use OOP effectively.
* Use OOP for large, maintainable applications and procedural programming for simple scripts.
