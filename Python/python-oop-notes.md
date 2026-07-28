# Python Object-Oriented Programming (OOP) Notes

## Procedural Python

* Executes code line by line.
* Uses functions to reuse code.
* Data and logic are separate.
* Suitable for small programs.
* Does not support OOP features like inheritance and abstraction.

---

## Object-Oriented Programming (OOP)

Definition:
Object-Oriented Programming (OOP) is a programming paradigm that organizes code using classes and objects. It combines data (attributes) and functions (methods) into one unit.

Advantages:

* Code Reusability
* Easy Maintenance
* Better Organization
* Supports Inheritance
* Supports Abstraction
* Suitable for Large Applications

---

## Class

Definition:
A class is a blueprint or template used to create objects.

Real-Life Example:
Car Blueprint = Class

BMW = Object

Benz = Object

Tesla = Object

All cars use the same blueprint but have different values.

---

## Object

Definition:
An object is an instance of a class.

Example:
Person = Class

John = Object

Alex = Object

Each object stores its own data.

---

## Constructor (**init**)

Definition:
**init**() is a special method called the constructor.

Purpose:

* Automatically executes when an object is created.
* Initializes object attributes.

Example:
Stores Name, Age, Year of Birth, etc.

---

## self Keyword

Definition:
self refers to the current object.

Important Points:

* Used to access attributes and methods.
* First parameter of every instance method.
* Can have any name, but "self" is the Python convention.

Example:
If you create two objects:

Alex
self.name = Alex
self.year = 1997

John
self.name = John
self.year = 1995

Each object gets its own values.

---

## Methods

Definition:
Functions inside a class are called methods.

Methods define the behavior of objects.

Examples:
start()
stop()
display()

---

## Magic (Dunder) Methods

Magic methods begin and end with double underscores.

Examples:
**init**()
**str**()
**repr**()

---

## **str**()

Definition:
Returns a user-friendly string representation of an object.

Automatically called by:
print(object)
str(object)

Purpose:
Display readable information to the user.

Without **str**():
Python prints the object's memory address.

With **str**():
Python prints a readable message.

---

## **repr**()

Definition:
Returns a developer-friendly representation of an object.

Automatically called by:
repr(object)

Purpose:
Used for debugging and development.

---

## Difference Between **str**() and **repr**()

**str**()

* User-friendly output.
* Used by print().
* Easy to read.
* Intended for end users.

**repr**()

* Developer-friendly output.
* Used by repr().
* Used for debugging.
* Gives detailed representation.

Important:
If **str**() is not defined, Python automatically uses **repr**().

Memory Trick:
**str**() = String for Users

**repr**() = Representation for Developers

---

## Encapsulation

Definition:
Encapsulation means combining data and methods into a single class while controlling access to the data.

Advantages:

* Data Security
* Better Organization
* Prevents accidental modification

---

## Access Specifiers

Public

* Accessible from anywhere.
* No underscore.

Protected

* Uses a single underscore (_).
* Intended for use within the class and subclasses.

Private

* Uses double underscores (__).
* Accessible only within the class.
* Python performs name mangling.

---

## Abstraction

Definition:
Abstraction means hiding implementation details and showing only the essential functionality.

Real-Life Example:
When driving a car, you only use:

* Start
* Stop
* Brake
* Accelerator

You don't need to know how the engine works internally.

---

## How to Achieve Abstraction

1. Using Abstract Base Classes (ABC)

* Import the abc module.
* Inherit from ABC.
* Use @abstractmethod.
* Child classes must implement all abstract methods.
* Cannot create an object of an abstract class.

2. Using Protected and Private Members

* Protected members (_)
* Private members (__)

These help hide implementation details.

---

## Inheritance

Definition:
Inheritance allows one class to inherit properties and methods from another class.

Advantages:

* Code Reusability
* Less Code Duplication
* Easy Maintenance

Example:
Person = Parent Class

Student = Child Class

Student inherits properties and methods from Person.

---

## Types of Inheritance

* Single Inheritance
* Multiple Inheritance
* Multilevel Inheritance
* Hierarchical Inheritance
* Hybrid Inheritance

---

## super()

Definition:
super() is used to call the parent class constructor or methods.

Advantages:

* Reuses parent class code.
* Avoids rewriting code.
* Used during inheritance.

---

## Method Overriding

Definition:
Method overriding occurs when the child class provides its own implementation of a parent class method.

Purpose:
Allows the child class to customize inherited behavior.

---

## OOP vs Procedural Programming

Procedural Programming

* Executes code line by line.
* Uses functions.
* Data and logic are separate.
* Best for small programs.
* No inheritance.

Object-Oriented Programming

* Uses classes and objects.
* Data and methods are together.
* High code reusability.
* Supports inheritance.
* Best for large applications.

---

## Real-Life Example of OOP

Class:
Car

Objects:
BMW
Benz
Tesla

Attributes:
Color
Model
Engine
Speed

Methods:
Start()
Stop()
Brake()
Accelerate()

---

## Interview Questions

What is OOP?
A programming paradigm that organizes code using classes and objects.

What is a Class?
A blueprint used to create objects.

What is an Object?
An instance of a class.

What is **init**()?
A constructor used to initialize object attributes.

What is self?
A reference to the current object.

What is a Method?
A function inside a class.

What is Encapsulation?
Binding data and methods together while controlling access to data.

What is Abstraction?
Hiding implementation details while exposing only essential functionality.

How do you achieve Abstraction?

* Using Abstract Base Classes (ABC)
* Using Protected (_) and Private (__) members

What is Inheritance?
A mechanism where one class inherits properties and methods from another class.

What is super()?
A function used to call parent class constructors and methods.

What is Method Overriding?
Replacing a parent class method with a child class implementation.

Difference between **str**() and **repr**()

* **str**() returns a user-friendly output.
* **repr**() returns a developer-friendly output used for debugging.

---

## Easy Memory Tricks

Class = Blueprint

Object = Real object created from blueprint

self = Current object

**init**() = Constructor

**str**() = String for Users

**repr**() = Representation for Developers

Encapsulation = Wrap data and methods together

Abstraction = Hide implementation

Inheritance = Reuse parent class

super() = Access parent class

Method Overriding = Child replaces parent method
