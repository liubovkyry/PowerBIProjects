# Data Model for Seven Sages Brewing Company

   This project task is to create a data model and Microsoft Power BI report for Seven Sages Brewing, a small company struggling
to leverage their disjointed data to facilitate smart decision-making. 
   The mission is to tame their datasets and create an efficient data model that will help the company better understand what products are
popular, and profitable,  so they can mark smart decisions about what products to prioritize as the company continues to grow. 


##  ETL with Power Query:

 - Merging 12 monthly sales files into Full 2021 Sales query for better analysis.
 - Merging SSBC Product Offerings.pdf to Product_CP query to include all product relevalt attributes.
 - Promoted first rows as headers.
 - Removed NULL values in all datasets.
 - Renamed queries and columns with descriptive names.
 - Changed columns' data types to suitable ones.
 
 ## Created a Date Table with the following fields:

 * Date (parameters used):
```= List.Dates( FY Start, Duration.Days( FY End - FY Start) +1, #duration( 1,0,0,0) )```

 * Calendar month name and number
 * Calendar year 

<i>Note:</i> Seven Sages' Fiscal year begins on October 1st and runs until September 30th. A transaction on Sept 20th 2020 would fall in FY 2020, but a transaction on October 20th would land in FY 2021
<!-- * Fiscal period:
 added a custom column ```
 Date.ToText(Date.FromText("01/10/" & Text.From(if Date.Month([Date]) >= 10 then Date.Year([Date]) else Date.Year([Date]) - 1)), "yyyy-MM")```-->

<!--The formula works by checking if the month of the date is greater than or equal to October (month number 10). If it is, then the fiscal year is the same as the year of the date. Otherwise, the fiscal year is the year before the year of the date. The formula then constructs a text string representing the first day of the fiscal year, which is October 1st, using the Date.FromText() and Text.From() functions. Finally, it converts this text string to a date using the Date.FromText() function, and then converts the resulting date to a text string in the format "yyyy-MM" using the Date.ToText() function.

Note that this formula assumes that the date column is in a format that Power Query can recognize as a date, such as "dd/mm/yyyy" or "mm/dd/yyyy". If your date column is in a different format, you may need to adjust the string argument passed to the Date.FromText() function accordingly.-->
 * FY - Q
<!-- added a custom column ```=if [Month] < 10 then "FY" &
Text.End(Number.ToText([Year]-1),2) & "/" &
Text.End(Number.ToText([Year]),2)
else "FY" &
Text.End(Number.ToText([Year]),2) & "/" &
Text.End(Number.ToText([Year]+1),2)```-->

<!--i can write my <code>if</code> formula remember my fiscal year starts on july 1st so i need to test if the month is less than <code>7</code> if it is then i want to concatenate <code>&</code> the text <code>"FY"</code> and iI only want the last <code>2</code> digits of the year so I'm going to use <code>Text.End</code> and I need to convert the year number to text so i'm going to use number two text and I want the year column i'm converting that to text I need to subtract <code>1</code> remember I want the previous year slash <code> / </code> the current year so the first year I want is the previous year so

year minus <code> 1 <code> close my number two text and then i just want the last <code>2 </code> digits of that year close <code>Text.End</code>. And i want to concatenate <code> &</code> forward slash and then I can grab the second year so we're just going to repeat this text and number two text and I  want the year again but just the last two digits so this is going to concatenate <code>"FY"</code> to the previous year and the current year where the month number is less than seven. So now allI need to do is write <code>else</code> and complete the formula for those months that are greater than seven so

let's just copy this right up to the <code>"FY"</code> and I'll paste it below so here instead of minus one we just want the current year because these are for months that are greater than seven and this one here we want to add one and that's it -->

 * Quarter:

![image](https://user-images.githubusercontent.com/118057504/220188918-a5804468-b0c4-4661-8b23-cbb25b421617.png)

## Create a Data Model (build relationships between tables):

![image](https://user-images.githubusercontent.com/118057504/220426779-04d01d3d-e6cd-4554-aa0e-22174b68b65a.png)

## Additionally added some info by using DAX Functions:

 - Total Items sold in CAD and USD separately:
```
 = SUMX(FILTER('FY20/21_Sales', 'FY20/21_Sales'[Currency] = "USD"), 'FY20/21_Sales'[Qty])
```
```
 = SUMX(FILTER('FY20/21_Sales', 'FY20/21_Sales'[Currency] = "CAD"), 'FY20/21_Sales'[Qty])
```
 - Sales in USD ($):
```
= SUMX('FY20/21_Sales', 'FY20/21_Sales'[Qty] * RELATED(SSBC_Products[Per Unit Sales price]))
```

 - Sales in CAD ($):
```
= SUMX('FY20/21_Sales', 'FY20/21_Sales'[Qty] * RELATED(SSBC_Products[Per Unit Sales price]) * RELATED('USD/CAD_Exchange_Rates'[CAD]))
```


 - Cost to make USD ($):
```
= SUMX('FY20/21_Sales', 'FY20/21_Sales'[Qty] * RELATED(SSBC_Products[COGS]))
```

 - Gross Profit Margin (or GPM):

```
= ([Sales (USD)]-[Cost to make])/[Sales (USD)] 
```
 - Unit Sales by Product (%):
 ```
 = [Sales (USD)]/CALCULATE([Sales (USD)],ALL())
 ```

 
 - GP per product USD: 
  ```
= [Sales (USD)] -[Cost to make]

```
 - Gross Profit per Product (%, USD):
```
= [GP per product USD] / CALCULATE([GP per product USD], ALL())
```

## Report Building:

### Sales and GPM Overview - Page 1

![image](https://user-images.githubusercontent.com/118057504/220423102-59925e56-f4aa-468c-800d-2b95c4cac1e9.png)

### Gross Profit and Units Sales - Page 2

![image](https://user-images.githubusercontent.com/118057504/220423534-fd2d6b8d-a108-4bcc-97a1-35b6ebd18988.png)

### Products comparison - Page 3

![image](https://user-images.githubusercontent.com/118057504/220423735-9d9ac0e1-44a9-4870-9611-7b29bfa5686e.png)

### Seasonality - Page 4

![image](https://user-images.githubusercontent.com/118057504/220423847-dee9442c-3a57-4658-a71e-c61a3bd726dc.png)
