In healthcare, improving efficiency while maintaining high-quality patient care is a top priority.
In this project were analyzed attributes impacting the patient length of stay (LOS) and cost and work to identify factors contributing to hospital differences. 

## Healthcare Analysis with Power BI
To kick off I brought the data into Power BI and connect data model. 
After a quick check-up on the dataset content, I got started with some initial exploratory analytics. 
Then, I leveraged some of my DAX skills to create calculated measures and columns.

### Measuring Hospital efficiency

Length of stay (or LOS) is considered an important indicator of the efficiency of hospital management. It's calculated as the total duration in days for a patient stay in hospital. A shorter LOS is often desirable in hospital operations. Primarily, shorter LOS means costs can be lowered. Reducing LOS can also release capacity in the system and improve throughput, enabling hospitals to serve more patients. Many factors can impact LOS. Patient age, health status, the type of procedure (or surgery), whether or not there were any complications, and the size of the hospital are some common factors.

### Terminology overview

Here are some terms I encountered: 
<b>An inpatient</b> is a person who has been admitted to a hospital bed.
<b>A discharge</b>, is defined as the release of a patient from hospital care by a medical worker. 
<b>Disposition</b>, is the patient destination or status upon discharge, for instance to another facility or to home. 
<b>An elective surgery</b> is a procedure that was planned in advance, in other words, it was not due to an emergency.
### Patient population for analysis

The focus is on patients who received hip replacement surgery. Here's a bit of a background on what this procedure is all about. Patients with hip pain, typically arthritis, may require elective hip replacement surgery. In this procedure, damaged bone and cartilage is surgically removed and replaced with prosthetic components. Hospital stay can range from 0 to 2 or more days.
###  The dataset

My dataset includes New York state-wide hospital discharge data for a year. Elective hip replacement surgery was the main reason for their hospital stay. The dataset is one single table with 30 columns. Each row in the dataset represents a single inpatient stay, from their admission to discharge date. The health information in this dataset is not individually identifiable. This means the file does not contain personal health information.

<!-- ### Dataset outcome attributes -->

The dataset has some key attributes to analyze efficiency. 
 - Length of stay measured in total days 
 - Total costs attributed to each hospital stay.

<!-- ### Dataset explanatory attributes -->

Also dataset includes a unique identifier for facility, a grouping of patient age, patient's disposition, the diagnosis description, severity of illness, and risk of mortality.

#### Hospital Overview
Firts, I created a measure to calculate Total number of Hospitals and visualized the number of hospitals by Health service Area.
```
Total Hospitals = DISTINCTCOUNT(hospital_discharges[facility_id])
```

#### Analysis of Total Discharges

Created a measure to calculate Total discharges and visualized the number of discharges by gender and age group:
```
Total Discharges = COUNTROWS(hospital_discharges)
```

#### Analysis of Lenght of Stay
I explored here the LOS across same demographic fields.
Created a measure and visualized by age and gender:
```
Average LOS Days = AVERAGE(hospital_discharges[length_of_stay])
```

#### Initial comparizon of hospitals (comparative analysis)
To have visibility how Average LOS and Total discharges compare between hospitals with factoring the total number og surgeons in each hospital.
```
#Surgeons = DISTINCTCOUNT(hospital_discharges[operating_provider_license_number])
```

<!-- ## Analyzing Hospital Performance and Benchmarking

Roll up your sleeves and scrub in—it’s time to get operating on some insights! This chapter is all about identifying hospital performance outliers and revealing what attributes most influence length of stay and cost per patient discharge. Along the way, you’ll sharpen your DAX skills by building some more complex measures and calculated tables.

## Creating a dynamic dashboard
In this final chapter, you’ll focus on building your final dashboard into a cohesive and interactive report. You’ll incorporate the HealthStat branding for an appealing display, optimize user-friendly navigation features, and close off by adding a dynamic title. -->
