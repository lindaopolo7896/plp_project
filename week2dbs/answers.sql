-- USE hospital_db

-- Retrieved first_name, last_name and date_of_birth of all patients
SELECT first_name,last_name,date_of_birth 
FROM patients;

-- Retrieved provider_id, first_name and provider_specialty from the providers table.
SELECT provider_id,first_name,provider_specialty
FROM providers;

-- Retrieved all patients whose first names start with "Ab"
SELECT * FROM patients
WHERE first_name LIKE 'Ab%';


-- Retrieved all providers whose specialties end with the letter "y".
SELECT * FROM providers
WHERE provider_specialty LIKE '%y';

-- Retrieved all patients born after 1st January 1980.
SELECT * FROM patients 
WHERE date_of_birth > '1980-01-01';

-- Retrieved visits where the acuity level is 2 or higher.
SELECT * 
FROM ed_visits
WHERE acuity >= '2';

-- Retrieved patients who speak Spanish.
SELECT *
FROM patients
WHERE language='Spanish';

--Retrieved where the reason is "Migraine" and the disposition is "Admitted".
SELECT *
FROM ed_visits
WHERE reason_for_visit='Migraine' 
AND ed_disposition='admitted';

-- Retrieved patients born between 1975 and 1980.

SELECT * 
FROM patients
WHERE date_of_birth 
BETWEEN '1975-12-31'
AND '1980-01-01';

-- Retrieved patient names and sorted them in alphabetical order by last name.
SELECT *
FROM patients
ORDER BY last_name;

-- Retrieved all visits sorted by the date of the visit, starting from the most recent.
SELECT *
FROM visits
ORDER BY date_of_visit DESC;

-- Retrieved all admissions where the primary diagnosis is "Stroke" and the discharge disposition is "Home".
SELECT * 
FROM admissions a
JOIN discharges d ON a.admission_id=d.admission_id
WHERE a.primary_diagnosis='Stroke'
AND d.discharge_disposition='Home';

-- Retrieved providers who joined after 1995 and specialize in either Pediatrics or Cardiology.
SELECT *
FROM providers
WHERE date_joined > '1975-12-31'
AND provider_specialty='Pediatrics'
OR provider_specialty='Cardiology';

-- Bonus
-- Query that lists all discharges where the patient was discharged home and the discharge date is within the first week of March 2018.
SELECT *
FROM discharges
WHERE discharge_disposition='Home'
AND discharge_date >= '2018-03-01'
AND discharge_date<='2018-03-07';
