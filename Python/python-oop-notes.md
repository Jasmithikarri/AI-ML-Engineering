Python Object-Oriented Programming (OOP) Notes

Procedural Python

Definition:
Procedural Python executes code line by line in sequence.

Features:
- Executes code line by line.
- Uses functions to reuse code.
- Data and logic are separate.
- Suitable for small programs.
- Does not support OOP features like inheritance and abstraction.

Object-Oriented Programming (OOP)

Definition:
Object-Oriented Programming (OOP) is a programming paradigm that organizes code using classes and objects. It combines data (attributes) and methods (functions) into a single unit.

Advantages:
- Code Reusability
- Easy Maintenance
- Better Organization
- Supports Inheritance
- Supports Abstraction
- Suitable for Large Applications.

Class

Definition:
A class is a blueprint or template used to create objects.

Real-Life Example:
Car Blueprint = Class
BMW = Object
Benz = Object
Tesla = Object

All cars use the same blueprint but have different values.

Object

Definition:
An object is an instance of a class.

Example:
Person = Class
John = Object
Alex = Object

Each object stores its own data.

Constructor (__init__())

Definition:
__init__() is a special method called the constructor.

Purpose:
- Automatically executes when an object is created.
- Initializes object attributes.

self Keyword

Definition:
self refers to the current object.

Important Points:
- Used to access attributes and methods.
- First parameter of every instance method.
- Can have any name, but "self" is the Python convention.

Methods

Definition:
Functions inside a class are called methods.

Examples:
- start()
- stop()
- display()

Magic (Dunder) Methods

Examples:
- __init__()
- __str__()
- __repr__()

__str__()

- Returns a user-friendly string representation of an object.
- Called by print(object) and str(object).

__repr__()

- Returns a developer-friendly representation of an object.
- Called by repr(object).

Difference Between __str__() and __repr__()

__str__()
- User-friendly.
- Used by print().
- Easy to read.

__repr__()
- Developer-friendly.
- Used for debugging.
- Used by repr().

If __str__() is not defined, Python uses __repr__().

Encapsulation

Definition:
Combining data and methods into a single class while controlling access to data.

Access Specifiers

Public
- Accessible from anywhere.

Protected
- Uses a single underscore (_).

Private
- Uses double underscores (__).

Abstraction

Definition:
Hiding implementation details while showing only essential functionality.

How to Achieve Abstraction

1. Using Abstract Base Classes (ABC)
- Import abc module.
- Inherit from ABC.
- Use @abstractmethod.
- Child classes must implement all abstract methods.
- Cannot create objects of abstract classes.

2. Using Protected and Private Members
- Protected (_)
- Private (__)

Inheritance

Definition:
One class inherits properties and methods from another.

Types of Inheritance
- Single
- Multiple
- Multilevel
- Hierarchical
- Hybrid

super()

Definition:
Used to call parent class constructors or methods.

Method Overriding

Definition:
A child class provides its own implementation of a parent class method.

Easy Memory Tricks

Class = Blueprint
Object = Instance
self = Current object
__init__() = Constructor
__str__() = String for Users
__repr__() = Representation for Developers
Encapsulation = Wrap data + methods
Abstraction = Hide implementation
Inheritance = Reuse parent class
super() = Access parent class
Method Overriding = Replace parent method
