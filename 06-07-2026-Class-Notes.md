1. Install MySQL

Download and install MySQL Installer:

MySQL Installer: https://dev.mysql.com/downloads/installer/

During installation, select Developer Default to install:

MySQL Server
MySQL Workbench

Note: Set a root password and remember it.

2. Open MySQL Workbench
Open MySQL Workbench
Connect to Local Instance MySQL80
Enter your root password
3. Download Sakila Database

Download the Sakila sample database:

https://dev.mysql.com/doc/index-other.html

Navigate to:

Example Databases → Sakila Database → Zip

Extract the ZIP file. It contains:

sakila-schema.sql
sakila-data.sql
4. Import Sakila Database
Open MySQL Workbench
Go to File → Open SQL Script
Import sakila-schema.sql and click ⚡ Execute
Import sakila-data.sql and click ⚡ Execute
5. Verify the Database
SHOW DATABASES;

USE sakila;

SHOW TABLES;

SELECT * FROM actor LIMIT 5;

If the actor table returns data, the Sakila database has been imported successfully. 🎉