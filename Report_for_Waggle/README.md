# Building a Power BI report for Waggle

## <i>Project Overview</i>
<i>Waggle</i> is a hot new startup that produces smart devices for pets. Their leading product, <b>the Lapdog collar</b>,
has been a tremendous success for the company and it allows a pet owner to easily track their dog’s steps,
heart rate, and general health from the convenience of their phone. The product has been so successful, in
fact, that the company is considering releasing a similar product for cats called <b>Lapcat</b> and has been testing
hundreds of prototypes in the field for the past several months.

Now, the data from those tests has been compiled and Waggle leadership has requested a Microsoft
Power BI report that <i>summarizes key insights <u>comparing</u> Lapcat and Lapdog devices that can be presented
to the CEO</i>. 

## <i>Project Objectives</i>
The main aim of this project is to compare the new Lapcat devices to the existing Lapdog collars through the data provided by the Waggle using Power BI as the data visualization tool.



## <i>Report Requirements:</i>
 *  The CEO is curious about the following questions:
   - Did the average daily steps increase for cats wearing the device as they did for dogs?
   - Were owners of Lapcat devices as satisfied with the product as Lapdog owners?
 * The Chief Marketing Officer would like the report to be “on-brand” by including only colors from the Waggle color palette, the Waggle logo, and other approved company logos and icons.
 * The report should include:
   - at least five slicers on each page with at least one example of a drop-down slicer, at least one example of a slider slicer, at least one example of a hierarchy slicer, at least one example of a slicer with “Select All” enabled, and one example of a slicer with the search box enabled.
   - at least two bookmark features. One must allow users to dynamically swap one visual out with a different one and another must reset all applied filters on the page.
   - buttons that help users navigate the report tabs. 
   - they must respond when users hover over them by changing color or size.
 * The report is to include 3 tabs:

   - The first page should highlight the CEO’s business questions, specifically calling out the differences in average step count and average user rating between Lapdog and Lapcat devices.
   - The second page should focus on insights related to pets using the device.
   - The third page should focus on insights related to the families that own the pets.

## <i>Our Data Model:</i>

![image](https://user-images.githubusercontent.com/118057504/221016149-cbe248a6-7a60-4adc-9477-3dfd1241931e.png)

## <i>Creating Visuals:</i>

### Report Tab 1:

To address the CEO’s questions created:
Visualizations to highlight the difference between average daily steps over time recorded on Lapdog devices vs. 
Lapcat devices displaying the trend over time by year and month.
Visualization to highlight  customer ratings for Lapdog devices vs. Lapcat devices.
In addition were added slicers to filter our output based on Device type, Pet, Breed, Period, Location.
![image](https://user-images.githubusercontent.com/118057504/221019605-98545455-583e-44c0-bf2f-84bff96489f8.png)

### Report Tab 2:

To drive insights from the pets dataset, the second tab included:

Displayed on cars: average Heartbeating, Average daily activity in minutes, Average daily steps made by pet.
A visualization that shows the breed distribution of cats and dogs by avg age and weight.
2 visualization that highlighted both gender and age distributions.
In addition were added slicers to filter our output based on  Pet, Gender, State, Year.
![image](https://user-images.githubusercontent.com/118057504/221019693-a78e27d0-3f48-4f52-97fd-b537cf279f89.png)

### Report Tab 3:
To drive insights from the family dataset, the third tab included:

Displayed comparison between annual household income and average pet expenses.
Visualizations that show distribution by amount of pets in a household, and separately distribution by City.
![image](https://user-images.githubusercontent.com/118057504/221022050-7c4e293f-b07f-41aa-be76-4a798a84db85.png)

### Report Tab 4:
Family Details:
Displayed cards with contact details, family information, pets in a family, comment regarding using a Waggle device, that can be obtained with Drill-through option in Power BI.
![image](https://user-images.githubusercontent.com/118057504/221021820-ee9e064d-7b26-4f0c-a3c0-6bbede3d96fc.png)
