# Project Plan: Coffee Sales Dashboard :coffee:

## 1. Project Description 🗒️:

The goal of the project is to create an interactive dashboard that displays coffee sales across various categories such as coffee type, country of sales, package size, and other parameters. The dashboard will include a line chart, a bar chart of sales by country, and a bar chart of the top 5 customers.


## 2. Data Collection and Preparation :file_folder:

2.1. Data Loading


Order Data: Contains order ID, order date, customer ID, product ID, quantity.
Customer Data: Contains customer ID, name, email address, phone number, address, loyalty card status.
Product Data: Contains product ID, coffee type, roast type, package size, unit price, price per 100 grams, profit.

2.2. Data Merging

Using the XLOOKUP formula to join customer data with order data.

Using the INDEX and MATCH formulas to join product data with order data.

<details>

<summary>Examples</summary>


```
   =XLOOKUP(orders!C3,customers!$A:$A,customers!$B:$B,,0) 
```

Purpose: Retrieves the customer's name based on the customer ID.

```
   =IF(XLOOKUP(orders!C2,customers!$A:$A,customers!$C:$C,,0)=0,"",XLOOKUP(orders!C2,customers!$A:$A,customers!$C:$C,,0))
```

Purpose: Retrieves the customer's email or leaves it blank if the email is missing.

```
   =XLOOKUP(orders!C2,customers!$A:$A,customers!$G:$G,,0)
```

Purpose: Retrieves the customer's country based on the customer ID.

```
   =INDEX(products!$A$1:$G$49,MATCH(orders!$D2,products!$A:$A,0),MATCH(orders!I$1,products!$A$1:$G$1,0))
```

Purpose: Retrieves product information (e.g., coffee type) based on the product ID.

```
  =INDEX(products!$A$1:$G$49,MATCH(orders!$D2,products!$A:$A,0),MATCH(orders!J$1,products!$A$1:$G$1,0))
```

Purpose: Retrieves another product characteristic (e.g., roast type) based on the product ID.

```
  =INDEX(products!$A$1:$G$49,MATCH(orders!$D2,products!$A:$A,0),MATCH(orders!K$1,products!$A$1:$G$1,0))
```

Purpose: Retrieves the package size based on the product ID.

```
  =INDEX(products!$A$1:$G$49,MATCH(orders!$D2,products!$A:$A,0),MATCH(orders!L$1,products!$A$1:$G$1,0))
```

Purpose: Retrieves the unit price based on the product ID.

```
  =IF(I2="Rob","Robusta",IF(I2="Exc","Excelsa", IF(I2="Ara","Arabica", IF(I2="Lib","Liberica",""))))
```

Purpose: Converts the coffee type abbreviation to the full name.

```
  =IF(J2="M","Medium", IF(J2="L","Light", IF(J2="D","Dark","")))
```

Purpose: Converts the roast type abbreviation to the full name.

</details>


## 3. Creating Visualizations :bar_chart:

3.1. Sales Line Chart

Creating a line chart to display total sales over time, split by coffee types (Arabica, Excelsa, Liberica, Robusta).

3.2. Sales by Country Bar Chart

Creating a bar chart to display sales by country (U.S, Ireland, UK).

3.3. Top 5 Customers Bar Chart

Creating a bar chart to display the top 5 customers by purchase volume.

## 4. Adding Filters and Slicers 🖋️

4.1. Roast Type Slicer

Creating a slicer to select the roast type (dark, light, medium).

4.2. Package Size Slicer

Creating a slicer to select the package size (0.2 kg, 0.5 kg, 1 kg, 2.5 kg).

## 5. Setting Up Interactivity 📎

5.1. Filter Interaction

Setting up interactions between all visualizations and filters/slicers.

Ensuring data updates correctly when selecting different filters and time ranges.
