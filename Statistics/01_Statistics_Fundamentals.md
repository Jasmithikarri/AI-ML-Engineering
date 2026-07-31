# What is Statistics?

Statistics is the science of collecting, organizing, analyzing, interpreting, and presenting data.

It helps us:

* Understand data
* Find patterns
* Compare data
* Make predictions
* Make business decisions

### Applications

* Business
* Healthcare
* Banking
* Marketing
* Telecom
* Data Science
* Machine Learning

---

# What is Data?

**Data** is a collection of facts, observations, or measurements.

### Examples

* Student marks
* Employee salary
* Height
* Temperature
* Sales

---

# Basic Terminologies

## Population

The entire collection of data.

**Example:**
All students in a university.

---

## Sample

A small part of the population used for analysis.

**Example:**
100 students selected from the university.

---

## Variable (Feature)

A characteristic of the data.

**Examples**

* Age
* Salary
* Height
* Blood Group

---

# Types of Statistics

## 1. Descriptive Statistics

Used to summarize and describe existing data.

It answers:

* What is the average?
* What is the maximum?
* What is the minimum?

It **does not predict the future.**

### Example

Marks:
80, 85, 90, 75, 70

Descriptive Statistics tells:

* Average = 80
* Highest = 90
* Lowest = 70

---

## 2. Inferential Statistics

Uses a sample to make predictions about a population.

### Example

Population = 100,000 people

Sample = 100 people

If 70 people in the sample like electric cars,

Inferential Statistics predicts that about **70% of the population may also like electric cars.**

---

# Types of Data

There are two main types.

## 1. Qualitative (Categorical) Data

Represents categories.

Examples

* Gender
* Blood Group
* Department
* Country

### Nominal Data

Categories without any order.

Examples

* Blood Group
* Eye Color
* Religion

Cannot be ranked.

---

### Ordinal Data

Categories with an order.

Examples

* Poor
* Average
* Good
* Excellent

Can be ranked but the difference between ranks is unknown.

---

## 2. Quantitative (Numerical) Data

Represents numbers.

Examples

* Height
* Weight
* Salary
* Age

Numerical data is divided into:

### Discrete Data

Countable values.

Usually whole numbers.

Examples

* Number of students
* Number of cars
* Number of books
* Number of employees

---

### Continuous Data

Measured values.

Can contain decimals.

Examples

* Height
* Weight
* Temperature
* Time
* Distance

---

# Levels of Measurement

These are used for numerical data.

## Interval Scale

Has equal intervals but **no true zero.**

Examples

* Temperature in Celsius
* Temperature in Fahrenheit
* Calendar Years

Example

20°C → 30°C

Difference = 10°C

But 0°C does **not** mean there is no temperature.

---

## Ratio Scale

Has equal intervals and a **true zero.**

Examples

* Height
* Weight
* Age
* Salary
* Distance

Example

60 kg is twice as heavy as 30 kg.

0 kg means no weight.

---

# Complete Data Classification

Data

→ Qualitative (Categorical)

* Nominal
* Ordinal

→ Quantitative (Numerical)

* Discrete
* Continuous

Measurement Scales

* Interval
* Ratio

---

# Measure of Central Tendency

Shows the center of the data.

There are three measures.

## Mean

Average of all values.

Formula

Mean = Sum of values ÷ Number of values

Example

10, 20, 30, 40, 50

Mean = 30

---

## Median

Middle value after arranging data.

Example

10, 20, 30, 40, 50

Median = 30

If there are even numbers,

10, 20, 30, 40

Median = (20 + 30) ÷ 2 = 25

Median is not affected much by outliers.

---

## Mode

Most frequently occurring value.

Example

5, 5, 5, 8, 9

Mode = 5

---

# Measure of Dispersion

Shows how spread out the data is.

---

## Range

Formula

Range = Maximum − Minimum

Example

80, 85, 90, 100

Range = 100 − 80 = 20

---

## Variance

Measures how far data values are from the mean.

Large variance = Data is more spread out.

Small variance = Data is closer together.

---

## Standard Deviation

Square root of variance.

Shows the average distance of data from the mean.

Small Standard Deviation = Values are close to the mean.

Large Standard Deviation = Values are far from the mean.

---

# Quartiles

Quartiles divide the data into four equal parts.

Q1 = 25%

Q2 = Median (50%)

Q3 = 75%

---

# Interquartile Range (IQR)

Formula

IQR = Q3 − Q1

Represents the middle 50% of the data.

---

# Outliers

Outliers are values that are very different from the rest of the data.

Example

10, 12, 13, 14, 15, 100

100 is an outlier.

---

# Finding Outliers Using IQR

Lower Limit

Q1 − (1.5 × IQR)

Upper Limit

Q3 + (1.5 × IQR)

Any value outside these limits is an outlier.

---

# Handling Outliers

Methods include:

* Remove the outlier
* Replace with Mean
* Replace with Median
* Log Transformation
* Square Root Transformation
* Binning

---

# Normal Distribution

A bell-shaped distribution.

Properties:

* Mean = Median = Mode
* Most values are near the center.
* Fewer values are far from the center.

---

# Empirical Rule (68–95–99.7 Rule)

For a normal distribution:

* 68% of data lies within ±1 Standard Deviation.
* 95% lies within ±2 Standard Deviations.
* 99.7% lies within ±3 Standard Deviations.

---

# Probability Distributions

## Bernoulli Distribution

Only two possible outcomes.

Examples

* Pass / Fail
* Yes / No
* Success / Failure
* 0 / 1

---

## Binomial Distribution

Repeated Bernoulli experiments.

Example

Find the probability of getting exactly 7 heads when a coin is tossed 10 times.

---

## Poisson Distribution

Used to count how many times an event occurs in a fixed interval.

Examples

* Customers entering a shop every minute
* Calls received per hour
* Website visits per second

---

## Uniform Distribution

Every outcome has the same probability.

Example

Rolling a fair dice.

Each number (1–6) has a probability of 1/6.

---

# Feature Engineering

Preparing data before building a Machine Learning model.

Includes:

* Handling missing values
* Removing outliers
* Standardization
* Normalization
* Creating new features
* Removing unnecessary columns
* Merging columns

---

# Hypothesis Testing

Used to determine whether a claim is statistically significant.

It helps decide whether observed differences are meaningful or happened by chance.

---

## Common Statistical Tests

### Z-Test

Used when:

* Sample size is large (typically n ≥ 30)
* Population standard deviation is known

---

### T-Test

Used when:

* Sample size is small
* Population standard deviation is unknown

Types:

* One Sample T-Test
* Independent Two Sample T-Test
* Paired T-Test

---

### Chi-Square Test

Checks whether two categorical variables are related.

Example:

Is gender related to product preference?

---

# Steps in Data Analysis

1. Collect Data
2. Understand the Data
3. Identify Data Types
4. Calculate Mean, Median, Mode
5. Measure Spread (Range, Variance, Standard Deviation)
6. Detect Outliers
7. Handle Missing Values
8. Perform Feature Engineering
9. Visualize Data
10. Draw Insights
11. Build Dashboards or Machine Learning Models

---

# Quick Revision

| Topic                  | Remember                   |
| ---------------------- | -------------------------- |
| Descriptive Statistics | Summarizes existing data   |
| Inferential Statistics | Predicts using sample      |
| Population             | Entire data                |
| Sample                 | Part of population         |
| Variable               | Characteristic of data     |
| Nominal                | Categories, no order       |
| Ordinal                | Categories with order      |
| Discrete               | Countable values           |
| Continuous             | Measured values            |
| Interval               | No true zero               |
| Ratio                  | True zero                  |
| Mean                   | Average                    |
| Median                 | Middle value               |
| Mode                   | Most frequent value        |
| Range                  | Max − Min                  |
| Variance               | Spread from mean           |
| Standard Deviation     | Average distance from mean |
| Q1, Q2, Q3             | Quartiles                  |
| IQR                    | Middle 50%                 |
| Outlier                | Extreme value              |
| Bernoulli              | Two outcomes               |
| Binomial               | Repeated Bernoulli trials  |
| Poisson                | Events in fixed time/space |
| Uniform                | Equal probability          |
| Feature Engineering    | Prepare data for ML        |
| Hypothesis Testing     | Test claims statistically  |


