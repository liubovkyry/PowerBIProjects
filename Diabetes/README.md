# Patients with Diabetes Profile Analysis

## Project Objectives

We all have experienced at least once in our life being in the hospital or at the hospital.
That is why I decided to analyze patients’ demographic and patients’ data about health with a focus on effectiveness of the provided treatment in defined time (up to 14 days being admitted).

## The Data

The data set can be found on Kaggle and represents 10 years (1999-2008) of clinical care data from 130 US hospitals throughout the United States: Midwest (18 hospitals), Northeast (58), South (28), and West (16).

### Original source of the data set
https://archive.ics.uci.edu/ml/datasets/Diabetes+130-US+hospitals+for+years+1999-2008

## Loading data from PostgreSQL database:

I decided to distinguish dataset into two tables: Patients’ card and Treatment card. Treatment card is going to be the fact table in my future data model. So, I imported them to Power BI using SQL.
I’ve also uploaded three CSV files into Power BI to create dimension tables:
Admission source, admission type, discharge disposition.

The original dataset contained multiple inpatient visits for some patients, that is why I left only the first encounter for each patient as the primary. There are some basic data transformations have been done like replacing values.
Data Model:
 

Patients’ Profile overview tab lets us to discover:
•	Around 79% of the patients staying in the hospitals less than 7 days, average staying – 4.29 days.
```
--the distribution of the length of hospital stay
with ordered_table as(select *
from diabetic_data
order by encounter_id asc)
select distinct time_in_hospital, 
count(distinct patient_nbr) as count_patients
from diabetic_data
group by time_in_hospital
order by time_in_hospital asc
```

•	Hospitals provide fair equitable treatment for patients of different races – the average number of laboratory procedures done is 40 to 44;

```
--if the hospital treats patients of different races fairly
select race, ROUND(AVG(num_lab_procedures),2) as avg_procedures
from diabetic_data
group by race
order by avg_procedures DESC
```

•	Nearly half of all patients with diabetes are patients aged 60-80 years old.
•	Despite common recognition of the HbA1c test as a useful measure of diabetes care, the test is ordered infrequently 19.1%. Glucose as well were checked only in 5% of all admission cases.
•	Nearly 77% of all patients were discharged to home with/without HSE supervision.
•	Readmissions in sooner than 30 days after discharge occurred in 8.8% of all encountered cases.


