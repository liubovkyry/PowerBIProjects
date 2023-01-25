# Competitor Sales Analysis

## Project steps:
- Data transformation.
- Data Integration.
- Data transformation operations.
- Append queries.
- Data model performance optimization.<!--Setting up relationship. Creating Calculated columns with  in both tables to establish a relationship.
<code>ZipCountry = COMBINEVALUES(",",Geography[Zip],Geography[Country])</code>
<code>ZipCountry = COMBINEVALUES(",",Sales[Zip],Sales[Country])</code>
Adding calculated table:
<code>Calendar = CALENDAR(DATE(2017,1,1),DATE(2021,12,31))</code>-->
- Top N Analysis. What are the TOP competitors genereting the most of the revenue across regions.
- Sales trend analysis. Best performing segments and products.
- DAX measure refresh.
- This Year v Last Year and % Growth calculation. (Growth over time, how we are performing compared to the previous year's performance)
- Market share analysis.
- Dynamic theme formating.
- Setting bookmarks and buttons.
-  Adding AI-based visuals.
-  Drillthrough.

![CAD](pics/CompSalesAnalysis.png)
![CAD](pics/AdvInsights.png)
