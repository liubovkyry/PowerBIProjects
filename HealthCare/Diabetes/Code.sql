-- Created table in PostgreSQL

CREATE TABLE public.diabetes (
	encounter_id int4 NULL,
	patient_nbr int4 NULL,
	race varchar(50) NULL,
	gender varchar(50) NULL,
	age varchar(50) NULL,
	weight varchar(50) NULL,
	admission_type_id int4 NULL,
	discharge_disposition_id int4 NULL,
	admission_source_id int4 NULL,
	time_in_hospital int4 NULL,
	payer_code varchar(50) NULL,
	medical_specialty varchar(50) NULL,
	num_lab_procedures int4 NULL,
	num_procedures int4 NULL,
	num_medications int4 NULL,
	number_outpatient int4 NULL,
	number_emergency int4 NULL,
	number_inpatient int4 NULL,
	diag_1 float4 NULL,
	diag_2 varchar(50) NULL,
	diag_3 varchar(50) NULL,
	number_diagnoses int4 NULL,
	max_glu_serum varchar(50) NULL,
	a1cresult varchar(50) NULL,
	metformin varchar(50) NULL,
	repaglinide varchar(50) NULL,
	nateglinide varchar(50) NULL,
	chlorpropamide varchar(50) NULL,
	glimepiride varchar(50) NULL,
	acetohexamide varchar(50) NULL,
	glipizide varchar(50) NULL,
	glyburide varchar(50) NULL,
	tolbutamide varchar(50) NULL,
	pioglitazone varchar(50) NULL,
	rosiglitazone varchar(50) NULL,
	acarbose varchar(50) NULL,
	miglitol varchar(50) NULL,
	troglitazone varchar(50) NULL,
	tolazamide varchar(50) NULL,
	examide varchar(50) NULL,
	citoglipton varchar(50) NULL,
	insulin varchar(50) NULL,
	"glyburide-metformin" varchar(50) NULL,
	"glipizide-metformin" varchar(50) NULL,
	"glimepiride-pioglitazone" varchar(50) NULL,
	"metformin-rosiglitazone" varchar(50) NULL,
	"metformin-pioglitazone" varchar(50) NULL,
	"change" varchar(50) NULL,
	diabetesmed varchar(50) NULL,
	readmitted varchar(50) NULL
);

--Extracted tables through Power BI:

--treatment_data fact table
select encounter_id,	patient_nbr,	admission_type_id,	discharge_disposition_id,	admission_source_id,	time_in_hospital,	medical_specialty,	num_lab_procedures,	num_procedures,	num_medications,	number_outpatient,	number_emergency,	number_inpatient,	diag_1,	diag_2,	diag_3,	number_diagnoses,	max_glu_serum,	A1Cresult,	metformin,	repaglinide,	nateglinide,	chlorpropamide,	glimepiride,	acetohexamide,	glipizide,	glyburide,	tolbutamide,	pioglitazone,	rosiglitazone,	acarbose,	miglitol,	troglitazone,	tolazamide,	examide,	citoglipton,	insulin,	"glyburide-metformin",	"glipizide-metformin",	"glimepiride-pioglitazone",	"metformin-rosiglitazone",	"metformin-pioglitazone",	change,	diabetesMed,	readmitted
from diabetic_data

--patient_data dimension table
select distinct patient_nbr as patient_nbr,
race, gender, age
from diabetic_data

--if the hospital treats patients of different races fairly
select race, ROUND(AVG(num_lab_procedures),2) as avg_procedures
from diabetic_data
group by race
order by avg_procedures DESC

--the distribution of the length of hospital stay
with ordered_table as(select *
from diabetic_data
order by encounter_id asc)
select distinct time_in_hospital, 
count(distinct patient_nbr) as count_patients
from diabetic_data
group by time_in_hospital
order by time_in_hospital asc


-- count of patients with the first encounter for each patient
select count(distinct patient_nbr)
from (select *
from diabetic_data
order by encounter_id asc) as ordered_table

--Result was high and the diabetic medication was changed
with cte_diabet AS
(select
encounter_id,
patient_nbr,
a1cresult,
"change"
from diabetic_data
where a1cresult = '>8'
order by encounter_id asc)
select count( 
distinct d.patient_nbr) as patient_nbr
from diabetic_data as d
inner join cte_diabet
on cte_diabet.encounter_id=d.encounter_id
where d."change" = 'Ch'

--Result was high but the diabetic medication was not changed
with cte_diabet AS
(select
encounter_id,
patient_nbr,
a1cresult,
"change"
from diabetic_data
where a1cresult = '>8'
order by encounter_id asc)
select count( 
distinct d.patient_nbr) as patient_nbr
from diabetic_data as d
inner join cte_diabet
on cte_diabet.encounter_id=d.encounter_id
where d."change" = 'No'

