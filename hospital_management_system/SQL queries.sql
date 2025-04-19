-- Retrieving all appointments for a specific doctor

SELECT a.appointment_id, p.name AS patient_name, a.appointment_date, a.status
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE d.name = 'Dr. John Smith';

-- Listing all treatments given to a patient

SELECT t.treatment_details, t.treatment_date, d.name AS doctor_name
FROM Treatments t
JOIN Appointments a ON t.appointment_id = a.appointment_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE a.patient_id = 2;

-- All patients treated in the cardiology department

SELECT p.name, p.phone, a.appointment_date
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Departments dept ON d.department_id = dept.department_id
WHERE dept.department_name = 'Cardiology';

-- All upcoming scheduled appointments

SELECT p.name AS patient_name, d.name AS doctor_name, a.appointment_date
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE a.appointment_date >= NOW() AND a.status = 'Scheduled';

-- Completed appointments per doctor

SELECT d.name AS doctor_name, COUNT(a.appointment_id) AS completed_appointments
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
WHERE a.status = 'Completed'
GROUP BY d.name;

-- Monthly Appointments

SELECT COUNT(*) AS total_appointments, DATE_FORMAT(appointment_date, '%Y-%m') AS month
FROM Appointments
GROUP BY month
ORDER BY month asc;