# Project Plan: NASA Objects Report Dashboard 🚀

## 1. Project Description 🗒️

The goal of this project is to create an interactive dashboard that visualizes key metrics related to NASA objects, including potentially hazardous objects. The dashboard will display summaries like average diameter, counts of hazardous and safe objects, as well as detailed visualizations of absolute magnitude and the relationship between estimated diameter and relative velocity.

## 2. Data Collection and Preparation 📁

### 2.1. Data Loading

**Objects Data:** Includes attributes such as name, relative velocity, estimated diameters, absolute magnitude, and hazard status.

## 3. Creating Visualizations 📊

### 3.1. Summary Metrics

Display key metrics such as average diameter, total hazardous objects, and total safe objects in summary cards.

### 3.2. Absolute Magnitude Bar Chart

Create a bar chart showing the sum of absolute magnitude for various objects, categorized by their names.

### 3.3. Estimated Diameter vs. Relative Velocity Scatter Plot

Develop a scatter plot to visualize the relationship between estimated maximum diameter and relative velocity of objects.

## 4. Adding Filters and Slicers 🖋️

### 4.1. Object Name Filter

Implement a filter to allow users to view data specific to selected objects by name.

### 4.2. Hazard Status Filter

Add a slicer to filter objects based on whether they are hazardous or safe.


# SQL Queries for NASA Objects Report 🚀

The SQL queries in this project are designed to extract and analyze data from a database containing information on NASA objects, including potentially hazardous objects. Below is a summary of the SQL-related tasks involved:

### 1. Data Retrieval and Initial Analysis 🖋️
- **Basic Data Retrieval**: 
  This step involves querying the database to retrieve all the columns and rows from the `objects` table, providing a comprehensive view of the available data.

### 2. Identifying Potentially Hazardous Objects 🖋️
- **High-Velocity Hazardous Objects**:
  The focus here is on filtering the objects to find those with a relative velocity of 50,000 km/h or more and identifying them as hazardous. This helps in assessing which objects pose a significant threat based on their speed and hazardous nature.

### 3. Analyzing Absolute Magnitude 🖋️
- **Top 5 Objects with the Lowest Absolute Magnitude**:
  This query lists the top 5 objects with the lowest absolute magnitude, which is a measure of an object's brightness. Identifying these objects helps in understanding which objects are the brightest and therefore the most observable.

### 4. Assessing Potential Danger 🖋️
- **Top 100 Most Dangerous Objects**:
  A critical analysis is conducted by calculating a "potential danger" score for objects, which prioritizes those that pass close to Earth at high speeds. This is essential for assessing potential threats to the planet.

### 5. Diameter Analysis 🖋️
- **Objects with Extreme Diameters**:
  This step involves finding the object with the smallest minimum diameter and the object with the largest maximum diameter. This analysis helps in identifying the smallest and largest objects based on their diameters.

- **Average Diameter by Velocity Group**:
  Objects are grouped by their relative velocity, and the average minimum and maximum diameters within each group are calculated. This provides insight into how the size of objects varies with their speed.

- **Objects with the Largest Diameter Difference**:
  The final part of the analysis identifies objects with the largest differences between their maximum and minimum estimated diameters. This is useful for understanding the range of sizes within individual objects.

These SQL queries serve as the backbone for data retrieval and analysis in the NASA Objects Report. They ensure that the dashboard provides accurate and meaningful insights into the characteristics and potential hazards of NASA objects.

