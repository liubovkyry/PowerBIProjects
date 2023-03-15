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

