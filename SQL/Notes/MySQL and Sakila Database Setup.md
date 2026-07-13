# MySQL and Sakila Database Setup

## Install MySQL

Download the MySQL Installer from:

[https://dev.mysql.com/downloads/installer/](https://dev.mysql.com/downloads/installer/)

During installation, select Developer Default.

This installs:

MySQL Server

MySQL Workbench

Set a root password and remember it.

## Open MySQL Workbench

Open MySQL Workbench.

Connect to:

Local Instance MySQL80

Enter the root password you created during installation.

## Download the Sakila Database

Download the Sakila sample database from:

[https://dev.mysql.com/doc/index-other.html](https://dev.mysql.com/doc/index-other.html)

Go to:

Example Databases → Sakila Database → Zip

Download and extract the ZIP file.

It contains:

sakila-schema.sql

sakila-data.sql

## Import the Sakila Database

Open MySQL Workbench.

Go to:

File → Open SQL Script

First open:

sakila-schema.sql

Click the lightning icon to execute it.

Then open:

sakila-data.sql

Click the lightning icon again.

The schema file creates the database structure.

The data file inserts the records.

Both files are needed.

## Check Whether Sakila Was Imported

Run:

SHOW DATABASES;

Then:

USE sakila;

Check the tables:

SHOW TABLES;

Check whether the actor table contains data:

SELECT * FROM actor
LIMIT 5;

If the actor table displays records, the Sakila database was imported successfully.

