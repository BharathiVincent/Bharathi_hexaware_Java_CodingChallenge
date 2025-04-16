use hms;
CREATE TABLE Patient (
    patientId INT PRIMARY KEY,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    dateOfBirth DATE,
    gender VARCHAR(10),
    contactNumber VARCHAR(20),
    address VARCHAR(255)
);

-- SQL Schema to create the Doctor table
CREATE TABLE Doctor (
    doctorId INT PRIMARY KEY,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    specialization VARCHAR(255),
    contactNumber VARCHAR(20)
);

-- SQL Schema to create the Appointment table
CREATE TABLE Appointment (
    appointmentId INT PRIMARY KEY,
    patientId INT,
    doctorId INT,
    appointmentDate DATE,
    description TEXT,
    FOREIGN KEY (patientId) REFERENCES Patient(patientId),
    FOREIGN KEY (doctorId) REFERENCES Doctor(doctorId)
);
-- Inserting data into the Patient table
INSERT INTO Patient (patientId, firstName, lastName, dateOfBirth, gender, contactNumber, address)
VALUES
    (1, 'harish', 'D', '1990-05-15', 'Male', '9876543210', '123 Main St, Anytown'),
    (2, 'sanjana', 'reddy', '1988-12-20', 'Female', '8765432109', '456 Oak Ave, Somecity'),
    (3, 'Peter', 'patrick', '1995-03-10', 'Male', '7654321098', '789 Pine Ln, Otherville');

-- Inserting data into the Doctor table
INSERT INTO Doctor (doctorId, firstName, lastName, specialization, contactNumber)
VALUES
    (101, 'Alice', 'Brown', 'Cardiologist', '9988776655'),
    (102, 'Bob', 'Green', 'Dermatologist', '8899001122'),
    (103, 'Charlie', 'White', 'Pediatrician', '7766554433');

-- Inserting data into the Appointment table
INSERT INTO Appointment (appointmentId, patientId, doctorId, appointmentDate, description)
VALUES
    (1001, 1, 101, '2025-04-20', 'Follow-up checkup'),
    (1002, 2, 102, '2025-04-25', 'Skin rash consultation'),
    (1003, 3, 103, '2025-04-22', 'Annual physical exam'),
    (1004, 1, 102, '2025-05-01', 'Acne treatment');
    
Rename table Appointments TO appointment;
SHOW CREATE TABLE Appointment;
drop table Appointment;
CREATE TABLE Appointment (
    appointmentId INT PRIMARY KEY AUTO_INCREMENT PRIMARY KEY,
    patientId INT,
    doctorId INT,
    appointmentDate DATE,
    description TEXT,
    FOREIGN KEY (patientId) REFERENCES Patient(patientId),
    FOREIGN KEY (doctorId) REFERENCES Doctor(doctorId)
);
INSERT INTO Appointment (appointmentId, patientId, doctorId, appointmentDate, description)
VALUES
    (1001, 1, 101, '2025-04-20', 'Follow-up checkup'),
    (1002, 2, 102, '2025-04-25', 'Skin rash consultation'),
    (1003, 3, 103, '2025-04-22', 'Annual physical exam'),
    (1004, 1, 102, '2025-05-01', 'Acne treatment');
