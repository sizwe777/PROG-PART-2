-- Create Manager Table
CREATE TABLE Manager (
    manager_id INT IDENTITY(1,1) PRIMARY KEY,
    manager_name VARCHAR(100) NOT NULL,
    manager_email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Create Lecturer Table
CREATE TABLE Lecturer (
    lecturer_id INT IDENTITY(1,1) PRIMARY KEY,
    lecturer_name VARCHAR(100) NOT NULL,
    lecturer_email VARCHAR(100) NOT NULL
);

-- Create Claims Table
CREATE TABLE Claims (
    claim_id INT IDENTITY(1,1) PRIMARY KEY,
    lecturer_id INT,
    hours_worked DECIMAL(5,2) NOT NULL,
    hourly_rate DECIMAL(10,2) NOT NULL,
    supporting_document VARCHAR(255),
    claim_status VARCHAR(50) DEFAULT 'Pending',
    review_notes TEXT,
    FOREIGN KEY (lecturer_id) REFERENCES Lecturer(lecturer_id)
);

-- Create Coordinator Table
CREATE TABLE Coordinator (
    coordinator_id INT IDENTITY(1,1) PRIMARY KEY,
    coordinator_name VARCHAR(100) NOT NULL,
    coordinator_email VARCHAR(100) NOT NULL
);

-- Insert some sample data
-- Insert into Manager
INSERT INTO Manager (manager_name, manager_email, password)
VALUES ('Sipho Ndlovu', 'sipho.ndlovu@example.com', 'password123');

-- Insert into Lecturer
INSERT INTO Lecturer (lecturer_name, lecturer_email)
VALUES 
    ('Thandiwe Khumalo', 'thandiwe.khumalo@example.com'),
    ('Bongani Mthethwa', 'bongani.mthethwa@example.com');

-- Insert into Claims (Assuming Hourly Rate is R200)
INSERT INTO Claims (lecturer_id, hours_worked, hourly_rate, supporting_document)
VALUES 
    (1, 10.5, 200, 'document1.pdf'),
    (2, 8.0, 200, 'document2.pdf');

-- Insert into Coordinator
INSERT INTO Coordinator (coordinator_name, coordinator_email)
VALUES ('Nomusa Dlamini', 'nomusa.dlamini@example.com');

-- Select all data from tables to verify
SELECT * FROM Manager;
SELECT * FROM Lecturer;
SELECT * FROM Claims;
SELECT * FROM Coordinator;
