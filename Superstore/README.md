# Superstore

## Introduction 

An American startup wants to analyze the data they've been collecting on their sales 
across the nation. Management has a few questions they’d like easy access to. 
They would like a dashboard designer to go through each question and try to come up with a 
way to display their data in a way that is neat and intuitive, even for the less data-savvy among 
them and then, to analyze the content making emphasis on performance (to be able to build a further sales strategy based on insights gained from our report).



## Data

For this project I will use sample of superstore dataset, that consists of 20 variables, including detailed information about products sold, customers and shipping information, order and shipping dates for the years 2015-2018, some quantitative data (profit, sales, discounts).
superstore.xlsx
```
Profit Ratio	ONE	Category	City	Country	Customer Name	Discount	Number of Records	Order Date	Order ID	Postal Code	Manufacturer	Product Name	Profit	Quantity	Region	Sales	Segment	Ship Date	Ship Mode	State	Sub-Category
16%	1	Furniture	Henderson	United States	Claire Gute	0%	1	11/8/2017	CA-2017-152156	42420	Bush	Bush Somerset Collection Bookcase	$42 	2	South	$262 	Consumer	11/11/2017	Second Class	Kentucky	Bookcases
30%	1	Furniture	Henderson	United States	Claire Gute	0%	1	11/8/2017	CA-2017-152156	42420	Hon	Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back	$220 	3	South	$732 	Consumer	11/11/2017	Second Class	Kentucky	Chairs
47%	1	Office Supplies	Los Angeles	United States	Darrin Van Huff	0%	1	6/12/2017	CA-2017-138688	90036	Universal	Self-Adhesive Address Labels for Typewriters by Universal	$7 	2	West	$15 	Corporate	6/16/2017	Second Class	California	Labels


```










<!--
GlobalSuperstore.xlsx

Orders

```
Row ID	Order ID	Order Date	Ship Date	Ship Mode	Customer ID	Customer Name	Segment	City	State	Country	Postal Code	Market	Region	Product ID	Category	Sub-Category	Product Name	Sales	Quantity	Discount	Profit	Shipping Cost	Order Priority
32298	CA-2012-124891	7/31/2012	7/31/2012	Same Day	RH-19495	Rick Hansen	Consumer	New York City	New York	United States	10024	US	East	TEC-AC-10003033	Technology	Accessories	Plantronics CS510 - Over-the-Head monaural Wireless Headset System	2309.65	7	0	762.1845	 933.57 	Critical
26341	IN-2013-77878	2/5/2013	2/7/2013	Second Class	JR-16210	Justin Ritter	Corporate	Wollongong	New South Wales	Australia		APAC	Oceania	FUR-CH-10003950	Furniture	Chairs	Novimex Executive Leather Armchair, Black	3709.395	9	0.1	-288.765	 923.63 	Critical
25330	IN-2013-71249	10/17/2013	10/18/2013	First Class	CR-12730	Craig Reiter	Consumer	Brisbane	Queensland	Australia		APAC	Oceania	TEC-PH-10004664	Technology	Phones	Nokia Smart Phone, with Caller ID	5175.171	9	0.1	919.971	 915.49 	Medium

```

Returns

```
Returned	Order ID	Market
Yes	MX-2013-168137	LATAM
Yes	US-2011-165316	LATAM
Yes	ES-2013-1525878	EU
Yes	CA-2013-118311	United States
```


People

```
Person	Region
Anna Andreadi	Central
Chuck Magee	South
Kelly Williams	East
Matt Collister	West
```


Diagrams
-->

## Project objectives:

## 1)	To display company’s data in a way that is neat and intuitive, even for the less data-savvy among them.


 Using the Superstore data file, first I'm going to create an intuitive dashboard to display an answer for each of the following questions.

1. What is the <i>most profitable City</i> in the State?
2. What’s the <i>average annual profit</i> for that specific city across all years?
3. What’s the <i>most profitable product category</i> on average in the city across all years?
4. What is the <i>most popular product</i> in that category across all states?
5. What was the <i>most profitable month</i> in a year overall?
6. How widely did monthly profits vary? 

Requirements: to get a maximum detailed information we will need to add some slicers and filters, including Year, City, State.

### Project Instructions

Step 1. Download and set up.

Downloaded the Sample Superstore data file in CSV format and opened within Power BI and explored the data, removed non-informative columns.

Step 2. Explore and Create a Sketch 

• Read through every question to first understand what data will be needed.
• Created a sketch of the charts that I think will appropriately answer the user's question.

Step 3. Created Wireframes

• Created multiple wireframes to get charts more organized.

Step 4. Created Proof of Concept Dashboard

• My charts should be able to answer multiple questions
     <i>Hint:</i> Use slicers to allow the user to explore the data in multiple ways
• Be sure to respect the constraint of “getting it right in black and white”
• Developed my proof-of-concept dashboard in Power BI tool
• Removed unnecessary charts where appropriate.

 
### Analysis
### 1. What is the <i>most profitable City</i> in the State?
The most profitable city for example in the State Tennessee is <b>Lebanon</b>.

![image](https://user-images.githubusercontent.com/118057504/224751647-5f9ffcc3-f654-496a-8539-e315e5d5d937.png)

### 2. What’s the <i>average annual profit</i> for that specific city across all years?
The average annual profit made of sales in Levbanon city across all years is <b>$27.7</b>.

![image](https://user-images.githubusercontent.com/118057504/225028569-882ec5b9-b5b9-4b16-a3e0-3e61abd01c8d.png)

### 3. What’s the <i>most profitable product category</i> on average in the city across all years?
The most profitable category of products sold for example in California,<b> is Office Supplies</b>, that made $38K across 2015-2018 years.

![image](https://user-images.githubusercontent.com/118057504/224759202-a8e8c2db-4407-4ec7-b7e4-002eaff01793.png)

### 4. What is the <i>most popular product</i> in that category across all states?
The most popular product in Office Supplies category is <b>Staple Envelope</b>, having the highest amount of orders compared to other products in the same category.

![image](https://user-images.githubusercontent.com/118057504/224759844-3d81c176-547b-40c8-bb4c-4fa69c05d316.png)


### 5. What was the <i>most profitable month</i> in a year 2018 overall?
The most profitable month in year 2018 was March bringing almost $15K of profit.

![image](https://user-images.githubusercontent.com/118057504/224760452-3bfa2135-6b8c-44b1-bae1-ed145e8c5b3e.png)

### 6. How widely did monthly profits vary? 

![image](https://user-images.githubusercontent.com/118057504/225034985-eb22b0b7-c6df-4609-ab21-5aeaba004863.png)




### Conclusion

Following the requirements, mentioned in the Project objectives, task 1 ( To display company’s data in the neat and an intuitive way) I developed a dashboard with using some filtering options and performing it in black and white color pallete. Also we can see, that the created dashboard can help us to answer multiple questions.

![image](https://user-images.githubusercontent.com/118057504/225077904-d368f14a-a981-44c7-b6d0-b8ed8e0a56a6.png)


## 2)	Emphasizing key elements to build the KPI dashboard, that will display the main points of interest for further investigation and discussion among executives and their team leads regarding future sales strategy.

1. Top-level revenue, profit, profit ratio and units sold.
2. YoY performance by customer segment (customer segment refers to
Corporate, Consumer, Home Office)
3. Monthly trend of the current year by segment (segment refers to Corporate,
Consumer, Home Office)
4. View category performance
5. Best performing sub-category within each customer segment

### Project Instructions
 
• Top-level revenue, profit, profit ratio and units sold for <b>2018</b>

• YoY performance by customer segment (customer segment refers to Corporate, Consumer, 
Home Office)

• View sub-category performance by the active metric

• Best performing sub-categories within each customer segment for the chosen metric

• Demonstrate a clear use of alignment so users can easily navigate the UI

• Use color to clearly call attention to the marks that matter most

• Create a text hierarchy:

Dashboard title text
```
Part 1 → font: Segoe UI, font size: 24, weight: italic
Part 2 → font: Segoe UI, font size: 18, weight: normal
Part 3 → font: Segoe UI, font size: 8, weight: normal
```
Body text
```
Axis number, sub-categories names, segment names, legends,
filters and parameter
font: Segoe UI, font size: 10, weight: normal
```
Card visual Text
```
Card visual values → font: DIN, font size: 22, weight: normal
Card visual  description → font: Segoe UI, font size: 12, weight: normal
```
Context/instructive text
```
Title for graphs
font: Segoe UI, font size: 10, weight: normal
```



Before building a dashboard in Power BI,

I created separate table for date and marked it as a date table:

```
Date = SUMMARIZE('USA Superstore', 'USA Superstore'[Order Date])
```
![image](https://user-images.githubusercontent.com/118057504/225359709-6df35e0d-9117-4d40-ba25-996e64e7117f.png)


Then I calculated Year over Year % change of Sales, Profit and Units sold, using next DAX formulas:
```
Total Profit YoY% = 
VAR Profit_LastYear = CALCULATE(SUM('USA Superstore'[Profit]), SAMEPERIODLASTYEAR('Date'[Order Date]))
RETURN
DIVIDE(SUM('USA Superstore'[Profit])-Profit_LastYear,Profit_LastYear)
```
```
Total Sales YoY% = 
VAR Sales_LastYear = CALCULATE(SUM('USA Superstore'[Sales]), SAMEPERIODLASTYEAR('Date'[Order Date]))
RETURN
DIVIDE(SUM('USA Superstore'[Sales])-Sales_LastYear,Sales_LastYear)
```
```
Total units sold YoY% = 
VAR Units_LastYear = CALCULATE(SUM('USA Superstore'[Quantity]), SAMEPERIODLASTYEAR('Date'[Order Date]))
RETURN
DIVIDE(SUM('USA Superstore'[Quantity])-Units_LastYear,Units_LastYear)
```


Next, I added <b>cards</b> to display our metrics:

![image](https://user-images.githubusercontent.com/118057504/225360420-6134a764-7846-4326-9c5c-f098570764cf.png)


<b>Slicers</b>, to filter our visuals by selecting Year, Sate, City, Category, Sub- Category, Segment.

<b>Matrix</b> table, to display Year-over-Year change in our metrics by Segment, in %:

![image](https://user-images.githubusercontent.com/118057504/225361211-cba64a44-531b-438b-8f0c-6c36d0f99738.png)

<b>Column chart</b> and custom <b>lollypop column chart</b>, to visualize Sales, Profit and Units sold by Segment and Sub-category + <b>bookmarks</b> for easy filtering:

 Units sold
 ![image](https://user-images.githubusercontent.com/118057504/225362673-f231c974-69d4-4c72-a4af-b2c87cf82b68.png)
 
 Total Profit
 ![image](https://user-images.githubusercontent.com/118057504/225362796-673814d3-ef8f-4212-a075-8988cdcfb718.png)
 
 Total Sales
 ![image](https://user-images.githubusercontent.com/118057504/225362914-ac5a683e-2c1e-4d6e-bdac-e70205b055e4.png)

-------
Ready dashboard:
 
 ![image](https://user-images.githubusercontent.com/118057504/225363449-03108bd2-caa2-4e41-a41a-9d541b08b86d.png)

### References
