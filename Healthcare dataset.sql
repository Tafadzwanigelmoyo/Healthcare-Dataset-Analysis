select *
from healthcare_dataset

----KPIs

--Total Hospital visits
select COUNT (name) AS Total_visits
from healthcare_dataset

--Count the number of patients recorded
select COUNT (distinct name) AS Num_of_patients
from healthcare_dataset

--Patient average age
select AVG(age) as Average_patient_age
from healthcare_dataset

--Total billing amount paid by patients
select SUM(billing_amount) as Total_money_spent
from healthcare_dataset

--Average number of days of Admission
select avg(DATEDIFF(day,date_of_admission,discharge_date)) as Avg_num_of_days_of_admission
from healthcare_dataset

----------------------------------------------------------------------------------------------------------------------------
--OVERVIEW PAGE

--Num of patients visiting a Hospital  
select Hospital, COUNT(Hospital) as Num
from healthcare_dataset
group by Hospital
order by num desc

--Num of patients visiting a Hospital  
select Hospital, COUNT(Hospital) as Num
from healthcare_dataset
group by Hospital
order by num desc

--Adimission Type
select Insurance_Provider, COUNT(Insurance_Provider) as Num
from healthcare_dataset
group by Insurance_Provider
order by Num Desc

--Number of tests results out
Select distinct Test_Results, COUNT(Test_Results) as Num_of_tests
from healthcare_dataset
group by Test_Results

--Total Admissions per Month
select DATENAME(Month, Date_of_Admission) as Month_name, COUNT(name) as Total_Admissions
from healthcare_dataset
group by DATENAME(Month, Date_of_Admission)

--Total Discharges per Month
select DATENAME(Month, Discharge_Date) as Month_name, COUNT(name) as Total_Discharges
from healthcare_dataset
group by DATENAME(Month, Discharge_Date)

----------------------------------------------------------------------------------------------------------------------------
--PATIENTS PAGE

--Share of Gender between the Patients
select Gender, COUNT(gender) as Num
from healthcare_dataset
group by Gender

--Blood types and their frequency
select Blood_Type, COUNT(blood_type) as Num
from healthcare_dataset
group by Blood_Type

--Number of medication issued
Select distinct Medication, COUNT(medication) as Num_of_medication_issued
from healthcare_dataset
group by Medication

--Patients with the most hosital visits
select name, COUNT(name) as Visits, count(distinct medical_condition) as Problems
from healthcare_dataset
group by Name
order by Visits desc

--Medical Condition counts, with the avg age
select Medical_Condition, count(medical_condition) as Num, AVG(age) as Average_patient_age
from healthcare_dataset
group by Medical_Condition

--Total Discharges per Day
select DATENAME(WEEKDAY, Discharge_Date) as Day_name, COUNT(name) as Total_Discharges
from healthcare_dataset
group by DATENAME(WEEKDAY, Discharge_Date)

--Total Admissions per Day
select DATENAME(WEEKDAY, Date_of_Admission) as Day_name, COUNT(name) as Total_Admissions
from healthcare_dataset
group by DATENAME(WEEKDAY, Date_of_Admission)

-----------------------------------------------------------------------------------------------------------------------------
--DOCTORS PAGE

--Doctors who saw the most patients
select Doctor, COUNT(doctor) as Attendence
from healthcare_dataset
group by Doctor
order by Attendence desc

--Total billing per hospital
select Hospital, SUM(billing_amount) as Revenue
from healthcare_dataset
group by Hospital
order by Revenue desc

