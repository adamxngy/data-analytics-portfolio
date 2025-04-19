-- CREATING THE TABLES

-- Creating the Patients table
CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    gender VARCHAR(10),
    phone VARCHAR(20),
    address VARCHAR(200)
);

-- Creating the Doctors table
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    department_id INT,
    phone VARCHAR(20)
);

-- Creating the Departments table
CREATE TABLE Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Creating the Appointments table
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATETIME,
    status VARCHAR(20) DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Creating the Treatments table
CREATE TABLE Treatments (
    treatment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT,
    treatment_details TEXT,
    treatment_date DATETIME,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- Creating the Prescriptions table
CREATE TABLE Prescriptions (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT,
    medication_name VARCHAR(100),
    dosage VARCHAR(50),
    prescribed_date DATE,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- UPDATING TABLES WITH VALUES

-- Insert data into Departments
INSERT INTO Departments (department_name)
VALUES 
    ('Oncology'),
    ('Orthopedics'),
    ('Radiology'),
    ('Cardiology'),
    ('Neurology'),
    ('Dermatology'),
    ('Psychiatry'),
    ('Hematology'),
    ('Anesthesiology'),
    ('Endocrinology'),
    ('Pulmonology'),
    ('Emergency Department');

-- Insert data into Doctors
INSERT INTO Doctors (name, specialization, department_id, phone)
VALUES 
    ('Dr. Alice Morgan', 'Cardiologist', 4, '650-881-6770'),
    ('Dr. John Smith', 'Orthopedic Surgeon', 2, '338-839-8821'),
    ('Dr. Emma Brown', 'Oncologist', 1, '229-931-5312'),
    ('Dr. Michael Johnson', 'Radiologist', 3, '231-423-5426'),
    ('Dr. Daniel Harris', 'Surgical oncologists', 1, '569-231-1798'),
    ('Dr. Ellie Scott', 'Radiologist', 3, '744-570-0460'),
    ('Dr. Harvey Allen', 'Cardiac imaging specialist', 4, '421-514-3310'),
    ('Dr. Alaya Peterson', 'Medical officer', 12, '414-884-3721'),
    ('Dr. Irwin Ray', 'Emergency physician', 12, '924-385-3617'),
    ('Dr. Angelo Odonnell', 'Intern', 12, '458-554-4999'),
    ('Dr. Karla Sloan', 'Dermatopathologist', 6, '494-681-5410'),
    ('Dr. Markus Caldwell', 'Neurologist', 5, '357-960-8453'),
    ('Dr. Wendi Armstrong', 'Anaesthetist', 9, '672-246-9001'),
    ('Dr. Laverne Caldwell', 'Pulmonologist', 11, '934-723-9441'),
    ('Dr. Kathleen Winn', 'Endocrinologist', 10, '386-803-1239'),
    ('Dr. Jessica Nichols', 'Endocrinologist', 10, '765-987-3264'),
    ('Dr. Erik Farmer', 'Hematologist', 8, '272-849-0638'),
    ('Dr. Dan Mathis', 'Psychiatrist', 7, '449-990-2825'),
    ('Dr. Misty Wyatt', 'Psychiatrist', 7, '849-532-5381'),
    ('Dr. Leticia Hatfield', 'Neurologist', 5, '720-296-7801');

-- Insert data into Patients
INSERT INTO Patients (name, dob, gender, phone, address)
VALUES 
    ('Tom Johnson', '1990-05-10', 'Male', '555-1234', '5933 Elm St'),
    ('Sarah Miller', '1985-09-12', 'Female', '555-5678', '4862 Oak St'),
    ('Mike Davis', '2000-12-20', 'Male', '555-9012', '7819 Maple St'),
    ('Danielle R. Jordan', '2002-11-04', 'Female', '435-6857', '1012 Freedom St'),
    ('Rebecca Jacques', '1998-10-22', 'Female', '899-9610', '2890 Par Drive'),
    ('David Jones', '1999-11-30', 'Male', '587-7548', '2232 Black Stallion St'),
    ('John L. Breece', '2004-01-10', 'Male', '895-5227', '3133 Memory Lane'),
    ('Amy Williams', '2001-06-14', 'Female', '220-3625', '4292 Hillview Drive'),
    ('Katherine Stovall', '1979-06-19', 'Female', '328-3247', '4084 East Avenue'),
    ('Sean Y. Duncan', '1989-03-02', 'Male', '562-7531', '2968 Colonial Drive'),
    ('Olivia M. Clark', '1991-07-15', 'Female', '543-8821', '1125 Maple Street'),
	('James K. Baker', '1985-11-23', 'Male', '621-3345', '7623 Oakwood Avenue'),
	('Ava J. Thompson', '1993-01-09', 'Female', '481-6677', '3785 Sunset Boulevard'),
	('Liam D. Harris', '1988-05-30', 'Male', '591-2234', '1536 Birch Lane'),
	('Sophia T. Lee', '1995-09-21', 'Female', '729-8542', '2754 Evergreen Street'),
	('Benjamin L. Martinez', '1990-12-12', 'Male', '839-9461', '944 Elm Drive'),
	('Emily R. White', '1987-02-18', 'Female', '477-5328', '3501 Pine Avenue'),
	('Lucas G. Anderson', '1986-03-14', 'Male', '654-2198', '6819 Park Lane'),
	('Amelia P. Johnson', '1992-08-04', 'Female', '389-4765', '4702 River Road'),
	('Noah S. Walker', '1989-06-17', 'Male', '721-6849', '5933 Willow Street'),
	('Isabella C. Young', '1994-10-26', 'Female', '342-9581', '1845 Main Street'),
	('Mason W. King', '1982-04-11', 'Male', '608-4327', '7529 Highland Avenue'),
	('Mia E. Wright', '1983-07-08', 'Female', '520-6472', '5296 Oak Street'),
	('Ethan F. Scott', '1996-11-05', 'Male', '744-8135', '8362 Cedar Drive'),
	('Charlotte V. Mitchell', '1984-02-23', 'Female', '293-9714', '4517 Lakeview Drive'),
	('William R. Perez', '1980-09-12', 'Male', '679-5824', '9027 Lincoln Street'),
	('Abigail N. Rivera', '1997-03-27', 'Female', '856-3429', '6194 Ridge Road'),
	('Elijah H. Carter', '1991-01-30', 'Male', '491-7536', '3119 Forest Avenue'),
	('Harper J. Green', '1989-10-18', 'Female', '578-6312', '2614 Park Avenue'),
	('Alexander B. Nelson', '1987-05-22', 'Male', '753-4289', '1487 Adams Street');

-- Insert data into Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status)
VALUES 
    (1, 6, '2024-11-05 09:00:00', 'Scheduled'),
    (2, 3, '2024-03-01 8:00:00', 'Completed'),
    (3, 20, '2024-10-02 11:30:00', 'Scheduled'),
    (4, 1, '2024-12-09 10:20:00', 'Scheduled'),
    (5, 11, '2024-11-16 13:15:00', 'Scheduled'),
    (6, 18, '2024-03-14 09:10:00', 'Completed'),
    (7, 14, '2024-11-19 08:30:00', 'Scheduled'),
    (8, 19, '2024-01-02 10:45:00', 'Completed'),
    (9, 11, '2024-06-11 11:30:00', 'Completed'),
    (10, 12, '2024-06-28 12:15:00', 'Completed'),
    (11, 5, '2024-10-25 13:45:00', 'Scheduled'),
    (12, 6, '2024-10-26 10:10:00', 'Scheduled'),
    (13, 7, '2024-08-29 09:00:00', 'Completed'),
    (14, 4, '2024-11-28 08:00:00', 'Scheduled'),
    (15, 11, '2024-11-29 09:15:00', 'Scheduled'),
    (16, 6, '2024-12-12 08:30:00', 'Scheduled'),
    (17, 11, '2024-07-27 08:00:00', 'Completed'),
    (18, 7, '2024-07-06 09:00:00', 'Completed'),
    (19, 8, '2024-12-03 10:45:00', 'Scheduled'),
    (20, 3, '2024-10-05 11:45:00', 'Scheduled'),
    (21, 2, '2024-10-06 11:20:00', 'Scheduled'),
    (22, 1, '2024-11-08 12:10:00', 'Scheduled'),
    (23, 1, '2024-02-05 11:15:00', 'Completed'),
    (24, 6, '2024-11-01 10:00:00', 'Scheduled'),
    (25, 7, '2024-10-14 08:40:00', 'Scheduled'),
    (26, 3, '2024-11-15 08:00:00', 'Scheduled'),
    (27, 5, '2024-02-22 09:15:00', 'Completed'),
    (28, 2, '2024-10-19 11:30:00', 'Scheduled'),
    (29, 4, '2024-02-10 10:00:00', 'Completed'),
    (30, 11, '2024-01-15 11:15:00', 'Completed');

-- Insert data into Treatments
INSERT INTO Treatments (appointment_id, treatment_details, treatment_date)
VALUES 
    (2, 'Radiation therapy for lung cancer', '2024-03-01 8:00:00'),
    (6, 'Prescription of antidepressants for depression', '2024-03-14 09:10:00'),
    (8, 'Cognitive behavioral therapy for anxiety', '2024-01-02 10:45:00'),
    (9, 'Laser therapy for acne scars', '2024-06-11 11:30:00'),
    (10, 'MRI scan and medication for migraine', '2024-06-28 12:15:00'),
    (13, 'Ultrasound for abdominal pain diagnosis', '2024-08-29 09:00:00'),
    (17, 'Topical ointment treatment for eczema', '2024-07-27 08:00:00'),
    (18, 'CT scan of the chest for suspected pneumonia', '2024-07-06 09:00:00'),
    (23, 'Medication for hypertension management', '2024-02-05 11:15:00'),
    (27, 'Tumor resection surgery for colorectal cancer', '2024-02-22 09:15:00'),
    (29, 'X-ray for bone fracture assessment', '2024-02-10 10:00:00'),
    (30, 'Skin biopsy for mole evaluation', '2024-01-15 11:15:00');

-- Insert data into Prescriptions
INSERT INTO Prescriptions (appointment_id, medication_name, dosage, prescribed_date)
VALUES 
    (2, 'Steroids', '10mg, once daily', '2024-03-01'),
    (2, 'SSRIs', '20mg, once daily', '2024-03-14'),
    (2, 'Anxiolytics', '10mg, twice daily', '2024-01-02'),
    (2, 'Antibiotic gel', 'Apply once daily', '2024-06-11'),
    (2, 'Triptans', '50mg, as needed for migraine', '2024-06-28'),
    (2, 'Antacids', '10ml, after meals', '2024-08-29'),
    (2, 'Hydrocortisone cream', 'Apply twice daily', '2024-07-27'),
    (2, 'Antibiotics', '500mg, three times daily', '2024-07-06'),
    (2, 'ACE inhibitors', '10mg, once daily', '2024-02-05'),
    (2, 'Opioid pain medication', '10mg, every 6 hours', '2024-02-22'),
    (2, 'Painkillers', '500mg, twice daily', '2024-02-10'),
    (2, 'Antibiotic ointment', 'Apply to wound twice daily', '2024-01-15');