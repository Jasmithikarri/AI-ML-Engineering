# Data Engineering Fundamentals

## What is Data?

Data is raw facts without any meaning.

Example:

100

John

85

We don't know what these values represent.

## What is Information?

Information is processed data that has meaning.

Example:

John scored 85 marks out of 100.

Now the data is easy to understand.

## What is Data Engineering?

Data Engineering is the process of collecting, cleaning, storing and preparing data for analysis, reporting and AI/ML models.

Simple flow:

Raw Data

↓

Clean Data

↓

AI / ML Model

↓

Business Decision

## Data Engineering Lifecycle

Collect

↓

Ingest

↓

Process

↓

Store

↓

Analyze

↓

Consume

Easy way to remember:

* Collect → Get data
* Ingest → Move data
* Process → Clean data
* Store → Save data
* Analyze → Find insights
* Consume → Dashboard, Report or AI Model

## Data Sources

Data can come from many places.

Examples:

* Databases
* APIs
* CSV files
* JSON
* XML
* Images
* Videos
* IoT devices
* Event Streams

Common tools:

* MySQL
* PostgreSQL
* MongoDB
* REST APIs
* BeautifulSoup
* Scrapy

## Types of Data

### Structured Data

Data stored in rows and columns.

Examples:

* SQL Tables
* Excel
* CSV

Tools:

* MySQL
* PostgreSQL
* SQL Server

### Semi-Structured Data

Data with a flexible format.

Examples:

* JSON
* XML

Tools:

* MongoDB
* REST APIs

### Unstructured Data

Data without a fixed structure.

Examples:

* Images
* Videos
* Audio
* PDF files

Storage:

* AWS S3
* Azure Blob Storage
* Data Lake

## Data Ingestion

Data Ingestion means moving data from the source to storage.

Example:

Website

↓

Data Lake

Common tools:

* Apache Kafka
* Apache NiFi
* Apache Flume

## ETL

ETL stands for:

Extract

↓

Transform

↓

Load

Meaning:

* Extract → Read data
* Transform → Clean and modify data
* Load → Store data

Tools:

* Informatica
* Talend
* Apache NiFi

## ELT

ELT stands for:

Extract

↓

Load

↓

Transform

Mostly used in cloud platforms because transformation happens after loading the data.

Tools:

* dbt
* Snowflake
* BigQuery
* Azure Synapse

## Medallion Architecture

### Bronze Layer

Stores raw data exactly as it is received.

Purpose:

* Backup
* Original copy
* No cleaning

### Silver Layer

Stores cleaned and processed data.

Common tasks:

* Remove duplicates
* Handle NULL values
* Rename columns
* Format dates

### Gold Layer

Business-ready data.

Used for:

* Dashboards
* Reports
* Power BI
* AI/ML Models

## Database

Stores current application data.

Examples:

* MySQL
* PostgreSQL
* Oracle
* SQL Server

## Data Warehouse

Stores historical business data for reporting and analytics.

Examples:

* Snowflake
* Amazon Redshift
* Google BigQuery

## Data Lake

Stores all types of raw data.

Examples:

* Images
* Videos
* CSV
* JSON
* Audio

Common storage:

* AWS S3
* Azure Blob Storage

## Data Mart

A smaller section of a Data Warehouse.

Examples:

* Finance
* Marketing
* HR

## Batch Processing

Processes data after a scheduled interval.

Examples:

* Daily sales reports
* Monthly payroll

Tools:

* Apache Spark
* Hadoop

## Stream Processing

Processes data immediately as it arrives.

Examples:

* Fraud Detection
* ATM Transactions
* GPS Tracking
* Live Notifications

Tools:

* Kafka
* Apache Flink
* Apache Beam

## Data Pipeline

A data pipeline moves data automatically from one system to another.

Flow:

Source

↓

ETL / ELT

↓

Storage

↓

Dashboard / AI Model

## Orchestration

Orchestration manages and schedules data pipelines.

It handles:

* Scheduling
* Retry
* Alerts
* Dependencies

Tools:

* Apache Airflow
* Prefect
* Dagster

## Data Governance

Rules and policies for managing data safely.

Includes:

* Security
* User Access
* Privacy
* Compliance

Tools:

* AWS Glue Data Catalog
* Apache Atlas

## Data Security

Protects sensitive information.

Common techniques:

* Encryption
* Data Masking

Example:

1234567890123456

↓

************3456

## Data Testing

Checks whether data is correct before it is used.

Checks include:

* Missing values
* Duplicate records
* Schema validation
* Business rules

Tools:

* Great Expectations
* Pytest

## Data Visualization

Displays data using charts and dashboards.

Popular tools:

* Power BI
* Tableau
* Matplotlib

## Complete Data Engineering Flow

Data Source

↓

Data Ingestion

↓

ETL / ELT

↓

Bronze Layer

↓

Silver Layer

↓

Gold Layer

↓

Data Warehouse

↓

Dashboard / AI Model

↓

Business Decision

## AI/ML Engineer Learning Roadmap

### Learn deeply

* SQL
* Python
* Machine Learning
* Statistics
* Deep Learning
* NLP
* Generative AI
* RAG
* FastAPI
* Git
* Docker
* Cloud Basics

### Understand well

* ETL & ELT
* Kafka
* Spark
* Airflow
* Snowflake
* Bronze, Silver & Gold Layers
* Data Lake
* Data Warehouse
* Batch Processing
* Stream Processing

### Basic awareness is enough

* Talend
* Informatica
* Apache Flume
* Apache NiFi
* Apache Atlas
* Jenkins
* Prefect
* Dagster
* Hive
* HBase
