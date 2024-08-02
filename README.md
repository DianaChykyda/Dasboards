Project Plan: Coffee Sales Dashboard

1. Project Description

The goal of the project is to create an interactive dashboard that displays coffee sales across various categories such as coffee type, country of sales, package size, and other parameters. The dashboard will include a line chart, a bar chart of sales by country, and a bar chart of the top 5 customers.


2. Data Collection and Preparation

2.1. Data Loading


Order Data: Contains order ID, order date, customer ID, product ID, quantity.
Customer Data: Contains customer ID, name, email address, phone number, address, loyalty card status.
Product Data: Contains product ID, coffee type, roast type, package size, unit price, price per 100 grams, profit.

2.2. Data Merging

Using the XLOOKUP formula to join customer data with order data.
Using the INDEX and MATCH formulas to join product data with order data.

=XLOOKUP(orders!C3,customers!$A:$A,customers!$B:$B,,0)

Description: Looks up the value in cell C3 of the "orders" table in column A of the "customers" table and returns the corresponding value from column B.
Purpose: Retrieves the customer's name based on the customer ID.
=IF(XLOOKUP(orders!C2,customers!$A:$A,customers!$C:$C,,0)=0,"",XLOOKUP(orders!C2,customers!$A:$A,customers!$C:$C,,0))

Description: Uses XLOOKUP to find the value in column C of the "customers" table based on C2 in the "orders" table. If the found value is 0, it returns an empty string; otherwise, it returns the found value.
Purpose: Retrieves the customer's email or leaves it blank if the email is missing.
=XLOOKUP(orders!C2,customers!$A:$A,customers!$G:$G,,0)

Description: Looks up the value in cell C2 of the "orders" table in column A of the "customers" table and returns the corresponding value from column G.
Purpose: Retrieves the customer's country based on the customer ID.
=INDEX(products!$A$1:$G$49,MATCH(orders!$D2,products!$A:$A,0),MATCH(orders!I$1,products!$A$1:$G$1,0))

Description: Uses INDEX and MATCH to find the value in the "products" table based on the product ID in column D of the "orders" table. It returns the value from the corresponding column.
Purpose: Retrieves product information (e.g., coffee type) based on the product ID.
=INDEX(products!$A$1:$G$49,MATCH(orders!$D2,products!$A:$A,0),MATCH(orders!J$1,products!$A$1:$G$1,0))

Description: Similar to the previous formula, but retrieves a different product characteristic.
Purpose: Retrieves another product characteristic (e.g., roast type) based on the product ID.
=INDEX(products!$A$1:$G$49,MATCH(orders!$D2,products!$A:$A,0),MATCH(orders!K$1,products!$A$1:$G$1,0))

Description: Similar to the previous formulas, retrieves another product characteristic.
Purpose: Retrieves the package size based on the product ID.
=INDEX(products!$A$1:$G$49,MATCH(orders!$D2,products!$A:$A,0),MATCH(orders!L$1,products!$A$1:$G$1,0))

Description: Similar to the previous formulas, retrieves another product characteristic.
Purpose: Retrieves the unit price based on the product ID.
=IF(I2="Rob","Robusta",IF(I2="Exc","Excelsa", IF(I2="Ara","Arabica", IF(I2="Lib","Liberica",""))))

Description: Checks the value in cell I2 and returns the corresponding full coffee type name (Robusta, Excelsa, Arabica, Liberica) based on the abbreviation.
Purpose: Converts the coffee type abbreviation to the full name.
=IF(J2="M","Medium", IF(J2="L","Light", IF(J2="D","Dark","")))

Description: Checks the value in cell J2 and returns the corresponding roast type (Medium, Light, Dark) based on the abbreviation.
Purpose: Converts the roast type abbreviation to the full name.

3. Creating Visualizations

3.1. Sales Line Chart

Creating a line chart to display total sales over time, split by coffee types (Arabica, Excelsa, Liberica, Robusta).

3.2. Sales by Country Bar Chart

Creating a bar chart to display sales by country (U.S, Ireland, UK).

3.3. Top 5 Customers Bar Chart

Creating a bar chart to display the top 5 customers by purchase volume.

4. Adding Filters and Slicers

4.1. Roast Type Slicer

Creating a slicer to select the roast type (dark, light, medium).

4.2. Package Size Slicer

Creating a slicer to select the package size (0.2 kg, 0.5 kg, 1 kg, 2.5 kg).

5. Setting Up Interactivity

5.1. Filter Interaction

Setting up interactions between all visualizations and filters/slicers.

Ensuring data updates correctly when selecting different filters and time ranges.
