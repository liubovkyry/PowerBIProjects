
 # Visualising Flight Delays Project 


 Using BI and Data Visualization tools created analysis of flight delays in the USA for 2021 and presented a dashboard.
 
 
 
 
 ## Data


The data set provided by the U.S. Department of Transportation's (DOT) Bureau of Transportation Statistics (BTS) which tracks the on-time performance of non-stop domestic flights operated by airline carriers that have at least one percent of total domestic scheduled service passenger revenue and provides summary information on the number of on-time, delayed, canceled and diverted flights. 
The link to download the dataset is: https://www.transtats.bts.gov/OT_Delay/OT_DelayCause1.asp

The BTS data set consists of approximately 19,955 rows with 21 variables. These variables include nominal data like airport and airline unique identifiers, names, city, and state as well as quantitative data such as number of on-time flights and number and length of delays by cause for major airlines by airports. Each row contains the data reported monthly by a specific carrier 6 for a single airport spanning 2021. 

A complete description of the data set dimensions can be found in <i>Appendix A</i>. Only flights arriving <i>more than 15 minutes past their scheduled arrival time</i> are considered late.
Causes include by carrier, security reasons, late aircraft, extreme weather, and national aviation system (NAS), which refers to a broad set of conditions, such as non¬extreme weather conditions, airport operations, heavy traffic volume, and air traffic control.

After I made some transformations with data I spent considerable time to understand the variables of the dataset.

There are some questions to explore have been identified:

1.	Which month has the greatest number of total airline delays and how does the trend look like for the entire year?
2.	What are the reasons for flight delay and the most impacting ones?
3.	States that display the greatest number of arrival delays?
4.	What are the carriers that causes most delays when all airports are considered?
5.	What are the top 5 airports and carriers contributing for most delays and their relationship?


![image](https://user-images.githubusercontent.com/118057504/224167166-eff47a3d-eefb-4a55-8dc9-86eff87b47ac.png)


### Insight 1 
Which month has the greatest number of total airline delays and how does the trend look like for the entire year?

Month that has the greatest number of total airline delays is <b>7(July)</b>:
![image](https://user-images.githubusercontent.com/118057504/224167366-57bfeb93-8111-4dcd-91dc-a1bf6ecffb4d.png)



#### Insight 2 
What are the reasons for flight delay and the most impacting ones?

The most impacting reasons of flight delays caused  by <b>carrier</b>, <b>extreme weather</b>, and <b>national aviation system (NAS)</b>.

![image](https://user-images.githubusercontent.com/118057504/224286188-66fe2e17-5b9d-44ca-80a6-ed80b01f304a.png)

#### Insight 3 
States that display the greatest number of arrival delays?

The state <b>Texas</b> has the greatest number of flight delays in 2021 (127727), with <b>Florida</b> (114371) and <b>California</b> (99961)
![image](https://user-images.githubusercontent.com/118057504/224288625-deb8408f-dfe3-434b-8043-ad1ee634cbfc.png)



#### Insight 4 
What are the carriers that causes most delays when all airports are considered?

The <b>Top 5 carriers</b> that causing the greatest number of flight delays are:
1) WN, SouthWest Airlines Co - 91K delays
2) OO, SkyWest Airlines Co - 71K delays
3) AA, American Airlines Inc. - 48K delays
4) DL, Delta Airlines Inc. - 37K delays
5) UA, United Air Lines Inc. - 25K delays

![image](https://user-images.githubusercontent.com/118057504/224290446-020933c4-6be6-45cc-bd94-f6817fa75d29.png)


#### Insight 5 
What are the <b>Top 5 airports</b> and carriers contributing for most delays and their relationship?

The top 5 airports contributing for most delays are:
1) DFW, Dallas/Forth West International
2) DEN, Denver International
3) ODR, Chicago O'Hare International
4) ATL, Hartsfield-Jackson Atlanta International
5) LAX, Los Angeles International

On the Table Visual and Stacked Bar Chart displayed below we can notice the relationship between <b>DFW,  Dallas International Airport</b> that had the most flight delays in 2021 and the carrier <b>(AA, American Airlines Inc)</b>, that causing the most delays in the chosen airport.

![image](https://user-images.githubusercontent.com/118057504/224296712-30c40775-b07a-4c71-8923-9256201d0afe.png)

## Conclusion

Using PowerBI features  I developed and presented a data visualization project based on a database of flight of United States. With these data base analisys I was able to asnwer the proposed questions.

Wich are the “types of flight delays”? Wich “type of flight delay” is the most impacting? There are 7 types of flight delays: security, weather, air system, airline, late aircraft, arrival and departure. The most impacting type is departure delay.
Wich month is the most affected by “flight delays”? June is the month more affected with flight delays.
In wich state occurs more “flight delays”? Texas has the majos occurance off light delays.

## Resourses

https://mosesandersonong.medium.com/data-visualisation-of-flight-delays-with-tableau-40aa6abf676b
https://www.transtats.bts.gov/OT_Delay/OT_DelayCause1.asp

---------------------------------------------------------------------------------------------
![image](https://user-images.githubusercontent.com/118057504/224116199-bb570055-966e-4991-941d-accf68a32800.png)



