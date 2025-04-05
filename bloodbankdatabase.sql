--- to create a database

create database blood_bank_database;

--- to activate the database

use blood_bank_database;

-- Table to store blood bank details

CREATE TABLE blood_bank (
    bank_id INT PRIMARY KEY AUTO_INCREMENT,
    bank_name VARCHAR(60) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(45) NOT NULL,
    state VARCHAR(45) NOT NULL,
    pin_code VARCHAR(10) NOT NULL,
    phone_number VARCHAR(10) UNIQUE NOT NULL,
    email VARCHAR(45) UNIQUE NOT NULL
);
-- Sample insert data for blood banks in Tamil Nadu

INSERT INTO blood_bank (bank_name, address, city, state, pin_code, phone_number, email) VALUES
('Red Cross Blood Bank', '123 Anna Salai', 'Chennai', 'Tamil Nadu', '600001', '9187658321', 'redcross_chennai@example.com'),
('Lifeline Blood Center', '56 Gandhi Road', 'Coimbatore', 'Tamil Nadu', '641001', '9198765432', 'lifeline_coimbatore@example.com'),
('Vital Blood Bank', '89 Mettupalayam Road', 'Madurai', 'Tamil Nadu', '625001', '9176543210', 'vital_madurai@example.com'),
('Hope Blood Bank', '21 NH Road', 'Trichy', 'Tamil Nadu', '620001', '9165432109', 'hope_trichy@example.com'),
('Guardian Blood Center', '14 Bharathiyar Road', 'Salem', 'Tamil Nadu', '636001', '9154321098', 'guardian_salem@example.com'),
('United Blood Services', '9 Mount Road', 'Tirunelveli', 'Tamil Nadu', '627001', '9143210987', 'united_tirunelveli@example.com'),
('LifeSavers Blood Bank', '67 Anna Nagar', 'Erode', 'Tamil Nadu', '638001', '9132109876', 'lifesavers_erode@example.com'),
('Sunshine Blood Bank', '23 Periyar Street', 'Vellore', 'Tamil Nadu', '632001', '9121098765', 'sunshine_vellore@example.com'),
('Plasma Plus', '45 Kamarajar Road', 'Thoothukudi', 'Tamil Nadu', '628001', '9110987654', 'plasma_thoothukudi@example.com'),
('Swift Blood Bank', '78 NH 7', 'Dindigul', 'Tamil Nadu', '624001', '9109876543', 'swift_dindigul@example.com'),
('SafeHands Blood Bank', '32 Gandhi Nagar', 'Thanjavur', 'Tamil Nadu', '613001', '9098765432', 'safehands_thanjavur@example.com'),
('Metro Blood Bank', '87 Trichy Road', 'Karur', 'Tamil Nadu', '639001', '9087654321', 'metro_karur@example.com'),
('Elite Blood Center', '11 Court Road', 'Kanchipuram', 'Tamil Nadu', '631501', '9076543210', 'elite_kanchipuram@example.com'),
('Rapid Blood Services', '65 Perambur High Road', 'Cuddalore', 'Tamil Nadu', '607001', '9065432109', 'rapid_cuddalore@example.com'),
('Beacon Blood Bank', '98 Pudhukottai Road', 'Nagapattinam', 'Tamil Nadu', '611001', '9054321098', 'beacon_nagapattinam@example.com'),
('Champion Blood Bank', '23 Anna Road', 'Tiruppur', 'Tamil Nadu', '641601', '9043210987', 'champion_tiruppur@example.com'),
('EverGreen Blood Bank', '57 NH 45', 'Namakkal', 'Tamil Nadu', '637001', '9032109876', 'evergreen_namakkal@example.com'),
('Pioneer Blood Center', '99 Old Bus Stand Road', 'Krishnagiri', 'Tamil Nadu', '635001', '9021098765', 'pioneer_krishnagiri@example.com'),
('CareWell Blood Bank', '44 Chennai Road', 'Ariyalur', 'Tamil Nadu', '621001', '9010987654', 'carewell_ariyalur@example.com'),
('Noble Blood Bank', '77 ECR Road', 'Pudukkottai', 'Tamil Nadu', '622001', '9009876543', 'noble_pudukkottai@example.com'),
('Paramount Blood Bank', '66 NH 45B', 'Sivagangai', 'Tamil Nadu', '630001', '8998765432', 'paramount_sivagangai@example.com'),
('Legacy Blood Center', '21 Kumbakonam Road', 'Perambalur', 'Tamil Nadu', '621212', '8987654321', 'legacy_perambalur@example.com'),
('Titan Blood Bank', '34 NH 44', 'Dharmapuri', 'Tamil Nadu', '636705', '8976543210', 'titan_dharmapuri@example.com'),
('Alpha Blood Bank', '12 GST Road', 'Villupuram', 'Tamil Nadu', '605602', '8965432109', 'alpha_villupuram@example.com'),
('Omega Blood Bank', '98 Central Road', 'Theni', 'Tamil Nadu', '625531', '8954321098', 'omega_theni@example.com'),
('Infinity Blood Bank', '67 Main Bazaar', 'Ramanathapuram', 'Tamil Nadu', '623501', '8943210987', 'infinity_ramanathapuram@example.com'),
('Zenith Blood Bank', '45 Market Road', 'Karaikal', 'Puducherry', '609602', '8932109876', 'zenith_karaikal@example.com'),
('Summit Blood Bank', '87 Collectorate Road', 'Chengalpattu', 'Tamil Nadu', '603001', '8921098765', 'summit_chengalpattu@example.com'),
('Horizon Blood Bank', '19 Ooty Main Road', 'Nilgiris', 'Tamil Nadu', '643001', '8910987654', 'horizon_nilgiris@example.com'),
('Peak Blood Bank', '33 Temple Street', 'Tiruvannamalai', 'Tamil Nadu', '606601', '8909876543', 'peak_tiruvannamalai@example.com');

-- Retrieve all blood banks along with their contact details and addresses.

SELECT * FROM blood_bank;

-- Table to store donor information

CREATE TABLE donor (
    donor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL CHECK (gender IN ('Male', 'Female', 'Other')),
    blood_type VARCHAR(5) NOT NULL CHECK (blood_type IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')),
    address VARCHAR(60),
    city VARCHAR(45) NOT NULL,
    state VARCHAR(45) NOT NULL,
    pin_code VARCHAR(10) NOT NULL,
    email VARCHAR(45) UNIQUE NOT NULL,
    last_donation_date DATE,
    eligibility BOOLEAN DEFAULT TRUE
);
-- Insert sample donor data

INSERT INTO donor (first_name, last_name, date_of_birth, gender, blood_type, address, city, state, pin_code, email, last_donation_date, eligibility) VALUES
('Arun', 'Kumar', '1990-05-12', 'Male', 'O+', '123 Anna Salai', 'Chennai', 'Tamil Nadu', '600001', 'arun.kumar@example.com', '2024-01-10', TRUE),
('Meena', 'Ravi', '1985-07-19', 'Female', 'A+', '56 Gandhi Road', 'Coimbatore', 'Tamil Nadu', '641001', 'meena.ravi@example.com', '2023-12-15', TRUE),
('Vijay', 'Raj', '1992-11-25', 'Male', 'B+', '89 Mettupalayam Road', 'Madurai', 'Tamil Nadu', '625001', 'vijay.raj@example.com', '2024-02-05', TRUE),
('Divya', 'Shankar', '1998-03-10', 'Female', 'AB+', '21 NH Road', 'Trichy', 'Tamil Nadu', '620001', 'divya.shankar@example.com', '2023-10-20', TRUE),
('Suresh', 'Prasad', '1987-08-30', 'Male', 'O-', '14 Bharathiyar Road', 'Salem', 'Tamil Nadu', '636001', 'suresh.prasad@example.com', '2024-03-15', TRUE),
('Anitha', 'Venkat', '1995-12-05', 'Female', 'A-', '9 Mount Road', 'Tirunelveli', 'Tamil Nadu', '627001', 'anitha.venkat@example.com', '2024-01-18', TRUE),
('Rahul', 'Krishna', '1991-06-22', 'Male', 'B-', '67 Anna Nagar', 'Erode', 'Tamil Nadu', '638001', 'rahul.krishna@example.com', '2024-02-12', TRUE),
('Lakshmi', 'Devi', '1989-04-15', 'Female', 'AB-', '23 Periyar Street', 'Vellore', 'Tamil Nadu', '632001', 'lakshmi.devi@example.com', '2023-11-25', TRUE),
('Surya', 'Mohan', '1993-09-09', 'Male', 'O+', '45 Kamarajar Road', 'Thoothukudi', 'Tamil Nadu', '628001', 'surya.mohan@example.com', '2024-03-01', TRUE),
('Priya', 'Bose', '1986-10-28', 'Female', 'A+', '78 NH 7', 'Dindigul', 'Tamil Nadu', '624001', 'priya.bose@example.com', '2023-12-10', TRUE),
('Arvind', 'Rao', '1994-07-17', 'Male', 'B+', '32 Gandhi Nagar', 'Thanjavur', 'Tamil Nadu', '613001', 'arvind.rao@example.com', '2024-01-22', TRUE),
('Sneha', 'Nair', '1997-01-05', 'Female', 'AB+', '87 Trichy Road', 'Karur', 'Tamil Nadu', '639001', 'sneha.nair@example.com', '2023-10-15', TRUE),
('Gopal', 'Das', '1988-02-14', 'Male', 'O-', '11 Court Road', 'Kanchipuram', 'Tamil Nadu', '631501', 'gopal.das@example.com', '2024-03-05', TRUE),
('Neha', 'Kapoor', '1999-11-22', 'Female', 'A-', '65 Perambur High Road', 'Cuddalore', 'Tamil Nadu', '607001', 'neha.kapoor@example.com', '2023-12-01', TRUE),
('Vikas', 'Natarajan', '1984-05-06', 'Male', 'B-', '98 Pudhukottai Road', 'Nagapattinam', 'Tamil Nadu', '611001', 'vikas.natarajan@example.com', '2024-02-28', TRUE),
('Pooja', 'Iyer', '1996-09-30', 'Female', 'AB-', '23 Anna Road', 'Tiruppur', 'Tamil Nadu', '641601', 'pooja.iyer@example.com', '2023-11-10', TRUE),
('Dinesh', 'Sekar', '1980-07-12', 'Male', 'O+', '57 NH 45', 'Namakkal', 'Tamil Nadu', '637001', 'dinesh.sekar@example.com', '2024-01-08', TRUE),
('Rekha', 'Menon', '1993-04-18', 'Female', 'A+', '99 Old Bus Stand Road', 'Krishnagiri', 'Tamil Nadu', '635001', 'rekha.menon@example.com', '2023-12-22', TRUE),
('Karthik', 'Shiva', '1990-12-03', 'Male', 'B+', '44 Chennai Road', 'Ariyalur', 'Tamil Nadu', '621001', 'karthik.shiva@example.com', '2024-02-14', TRUE),
('Meenal', 'Bala', '1983-08-25', 'Female', 'AB+', '77 ECR Road', 'Pudukkottai', 'Tamil Nadu', '622001', 'meenal.bala@example.com', '2023-10-28', TRUE),
('Sathish', 'Varma', '1991-06-30', 'Male', 'O-', '66 NH 45B', 'Sivagangai', 'Tamil Nadu', '630001', 'sathish.varma@example.com', '2024-01-25', TRUE),
('Arthi', 'Krishnan', '1998-01-11', 'Female', 'A-', '21 Kumbakonam Road', 'Perambalur', 'Tamil Nadu', '621212', 'arthi.krishnan@example.com', '2023-11-15', TRUE),
('Rajesh', 'Patel', '1995-10-05', 'Male', 'B-', '34 NH 44', 'Dharmapuri', 'Tamil Nadu', '636705', 'rajesh.patel@example.com', '2024-02-20', TRUE),
('Devi', 'Madhavan', '1989-03-29', 'Female', 'AB-', '12 GST Road', 'Villupuram', 'Tamil Nadu', '605602', 'devi.madhavan@example.com', '2023-12-05', TRUE),
('Ajay', 'Menon', '1987-12-17', 'Male', 'O+', '98 Central Road', 'Theni', 'Tamil Nadu', '625531', 'ajay.menon@example.com', '2024-01-12', TRUE),
('Swetha', 'Pillai', '1992-09-22', 'Female', 'A+', '67 Main Bazaar', 'Ramanathapuram', 'Tamil Nadu', '623501', 'swetha.pillai@example.com', '2023-11-28', TRUE);

-- Retrieve all donors including personal details, blood type, contact info, and donation eligibility.

SELECT * FROM donor;

-- Table to store blood units available at each blood bank

CREATE TABLE blood_inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    bank_id INT NOT NULL,
    blood_type VARCHAR(5) NOT NULL CHECK (blood_type IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')),
    quantity INT NOT NULL CHECK (quantity >= 0),
    donation_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    CONSTRAINT fk_bank_id1 foreign key (bank_id)
    REFERENCES blood_bank(bank_id) ON DELETE CASCADE
);
-- Sample insert into blood_inventory

INSERT INTO blood_inventory (bank_id, blood_type, quantity, donation_date, expiry_date) VALUES
(1, 'O+', 10, '2024-03-01', '2024-06-01'),
(2, 'A-', 5, '2024-03-02', '2024-06-02'),
(3, 'B+', 8, '2024-03-03', '2024-06-03'),
(4, 'AB+', 6, '2024-03-04', '2024-06-04'),
(5, 'O-', 7, '2024-03-05', '2024-06-05'),
(6, 'B-', 4, '2024-03-06', '2024-06-06'),
(7, 'A+', 9, '2024-03-07', '2024-06-07'),
(8, 'AB-', 3, '2024-03-08', '2024-06-08'),
(9, 'O+', 12, '2024-03-09', '2024-06-09'),
(10, 'A-', 6, '2024-03-10', '2024-06-10'),
(11, 'B+', 10, '2024-03-11', '2024-06-11'),
(12, 'AB+', 5, '2024-03-12', '2024-06-12'),
(13, 'O-', 8, '2024-03-13', '2024-06-13'),
(14, 'B-', 7, '2024-03-14', '2024-06-14'),
(15, 'A+', 11, '2024-03-15', '2024-06-15'),
(16, 'AB-', 2, '2024-03-16', '2024-06-16'),
(17, 'O+', 15, '2024-03-17', '2024-06-17'),
(18, 'A-', 9, '2024-03-18', '2024-06-18'),
(19, 'B+', 13, '2024-03-19', '2024-06-19'),
(20, 'AB+', 4, '2024-03-20', '2024-06-20'),
(21, 'O-', 6, '2024-03-21', '2024-06-21'),
(22, 'B-', 5, '2024-03-22', '2024-06-22'),
(23, 'A+', 14, '2024-03-23', '2024-06-23'),
(24, 'AB-', 3, '2024-03-24', '2024-06-24'),
(25, 'O+', 16, '2024-03-25', '2024-06-25'),
(26, 'A-', 7, '2024-03-26', '2024-06-26'),
(27, 'B+', 9, '2024-03-27', '2024-06-27'),
(28, 'AB+', 5, '2024-03-28', '2024-06-28'),
(29, 'O-', 10, '2024-03-29', '2024-06-29'),
(30, 'B-', 8, '2024-03-30', '2024-06-30');

-- Retrieve all blood inventory entries, showing quantity and availability by blood type and expiry date at each bank.

SELECT * FROM blood_inventory;

-- Table to record each donation

CREATE TABLE donation (
    donation_id INT PRIMARY KEY AUTO_INCREMENT,
    donor_id INT NOT NULL,
    bank_id INT NOT NULL,
    donation_date DATE NOT NULL,
    blood_type VARCHAR(5) NOT NULL CHECK (blood_type IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')),
    quantity INT NOT NULL CHECK (quantity > 0),
    screening_results VARCHAR(45),
    CONSTRAINT fk_donor_id FOREIGN KEY (donor_id)
    REFERENCES donor(donor_id) ON DELETE CASCADE,
    CONSTRAINT fk_bank_id2 foreign key (bank_id)
    REFERENCES blood_bank(bank_id) ON DELETE CASCADE
);
-- Sample insert into donation table

INSERT INTO donation (donor_id, bank_id, donation_date, blood_type, quantity, screening_results) VALUES
(1, 1, '2024-03-01', 'O+', 1, 'Passed'),
(2, 2, '2024-03-02', 'A-', 1, 'Passed'),
(3, 3, '2024-03-03', 'B+', 1, 'Passed'),
(4, 4, '2024-03-04', 'AB+', 1, 'Passed'),
(5, 5, '2024-03-05', 'O-', 1, 'Passed'),
(6, 6, '2024-03-06', 'B-', 1, 'Passed'),
(7, 7, '2024-03-07', 'A+', 1, 'Passed'),
(8, 8, '2024-03-08', 'AB-', 1, 'Passed'),
(9, 9, '2024-03-09', 'O+', 1, 'Passed'),
(10, 10, '2024-03-10', 'A-', 1, 'Passed'),
(11, 11, '2024-03-11', 'B+', 1, 'Passed'),
(12, 12, '2024-03-12', 'AB+', 1, 'Passed'),
(13, 13, '2024-03-13', 'O-', 1, 'Passed'),
(14, 14, '2024-03-14', 'B-', 1, 'Passed'),
(15, 15, '2024-03-15', 'A+', 1, 'Passed'),
(16, 16, '2024-03-16', 'AB-', 1, 'Passed'),
(17, 17, '2024-03-17', 'O+', 1, 'Passed'),
(18, 18, '2024-03-18', 'A-', 1, 'Passed'),
(19, 19, '2024-03-19', 'B+', 1, 'Passed'),
(20, 20, '2024-03-20', 'AB+', 1, 'Passed'),
(21, 21, '2024-03-21', 'O-', 1, 'Passed'),
(22, 22, '2024-03-22', 'B-', 1, 'Passed'),
(23, 23, '2024-03-23', 'A+', 1, 'Passed'),
(24, 24, '2024-03-24', 'AB-', 1, 'Passed'),
(25, 25, '2024-03-25', 'O+', 1, 'Passed'),
(26, 26, '2024-03-26', 'A-', 1, 'Passed');

-- Retrieve all donation records including donor, bank, donation date, blood type, quantity, and screening results.

SELECT * FROM donation;

-- Table to store recipient details

CREATE TABLE recipient (
    recipient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL CHECK (gender IN ('Male', 'Female', 'Other')),
    blood_type VARCHAR(5) NOT NULL CHECK (blood_type IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')),
    address VARCHAR(60),
    city VARCHAR(45) NOT NULL,
    state VARCHAR(45) NOT NULL,
    pin_code VARCHAR(10) NOT NULL,
    phone_number VARCHAR(10) UNIQUE,
    email VARCHAR(45) UNIQUE NOT NULL,
    medical_history TEXT
);
-- Sample insert into recipient table

INSERT INTO recipient (first_name, last_name, date_of_birth, gender, blood_type, address, city, state, pin_code, phone_number, email, medical_history) VALUES
('Arun', 'Kumar', '1985-06-15', 'Male', 'O+', '12 Gandhi Road', 'Chennai', 'Tamil Nadu', '600001', '9876543210', 'arun.kumar@example.com', 'Diabetes'),
('Meena', 'Ravi', '1992-03-22', 'Female', 'A-', '34 Mount Road', 'Madurai', 'Tamil Nadu', '625001', '9876543211', 'meena.ravi@example.com', 'Hypertension'),
('Vikram', 'Raj', '1988-11-10', 'Male', 'B+', '56 Anna Nagar', 'Coimbatore', 'Tamil Nadu', '641001', '9876543212', 'vikram.raj@example.com', 'Anemia'),
('Divya', 'Suresh', '1995-07-19', 'Female', 'AB+', '78 Mylapore', 'Chennai', 'Tamil Nadu', '600004', '9876543213', 'divya.suresh@example.com', 'No medical history'),
('Sanjay', 'Narayan', '1990-02-25', 'Male', 'O-', '90 Race Course', 'Trichy', 'Tamil Nadu', '620001', '9876543214', 'sanjay.narayan@example.com', 'Heart condition'),
('Kavitha', 'Balan', '1983-09-30', 'Female', 'B-', '23 Gandhi Nagar', 'Erode', 'Tamil Nadu', '638001', '9876543215', 'kavitha.balan@example.com', 'Thyroid issues'),
('Manoj', 'Selvam', '1979-05-18', 'Male', 'A+', '44 East Road', 'Salem', 'Tamil Nadu', '636001', '9876543216', 'manoj.selvam@example.com', 'No medical history'),
('Lakshmi', 'Varun', '1997-01-07', 'Female', 'AB-', '101 KK Nagar', 'Tirunelveli', 'Tamil Nadu', '627001', '9876543217', 'lakshmi.varun@example.com', 'Asthma'),
('Ganesh', 'Ram', '1986-04-21', 'Male', 'O+', '34 North Street', 'Vellore', 'Tamil Nadu', '632001', '9876543218', 'ganesh.ram@example.com', 'Diabetes'),
('Sowmya', 'Krishnan', '1994-08-13', 'Female', 'A-', '67 West Road', 'Dindigul', 'Tamil Nadu', '624001', '9876543219', 'sowmya.krishnan@example.com', 'Hypertension'),
('Arjun', 'Prabhu', '1991-06-28', 'Male', 'B+', '12 Gandhi Street', 'Chennai', 'Tamil Nadu', '600002', '9876543220', 'arjun.prabhu@example.com', 'Anemia'),
('Priya', 'Mohan', '1989-12-11', 'Female', 'AB+', '45 Mount Road', 'Madurai', 'Tamil Nadu', '625002', '9876543221', 'priya.mohan@example.com', 'Thyroid issues'),
('Suresh', 'Kannan', '1977-03-03', 'Male', 'O-', '78 MG Road', 'Coimbatore', 'Tamil Nadu', '641002', '9876543222', 'suresh.kannan@example.com', 'Heart condition'),
('Anitha', 'Rajesh', '1993-05-17', 'Female', 'B-', '89 East Main Road', 'Trichy', 'Tamil Nadu', '620002', '9876543223', 'anitha.rajesh@example.com', 'No medical history'),
('Vasanth', 'Vijay', '1982-09-25', 'Male', 'A+', '33 South Road', 'Erode', 'Tamil Nadu', '638002', '9876543224', 'vasanth.vijay@example.com', 'Hypertension'),
('Geetha', 'Ramesh', '1996-02-12', 'Female', 'AB-', '14 KK Nagar', 'Salem', 'Tamil Nadu', '636002', '9876543225', 'geetha.ramesh@example.com', 'Asthma'),
('Karthik', 'Sundar', '1985-07-30', 'Male', 'O+', '23 West Park', 'Tirunelveli', 'Tamil Nadu', '627002', '9876543226', 'karthik.sundar@example.com', 'Diabetes'),
('Sindhu', 'Murali', '1998-04-05', 'Female', 'A-', '78 Gandhi Road', 'Vellore', 'Tamil Nadu', '632002', '9876543227', 'sindhu.murali@example.com', 'No medical history'),
('Naveen', 'Deepak', '1992-01-09', 'Male', 'B+', '56 Anna Nagar', 'Dindigul', 'Tamil Nadu', '624002', '9876543228', 'naveen.deepak@example.com', 'Thyroid issues'),
('Revathi', 'Gopal', '1984-11-22', 'Female', 'AB+', '101 MG Road', 'Chennai', 'Tamil Nadu', '600003', '9876543229', 'revathi.gopal@example.com', 'Hypertension'),
('Mohan', 'Vikram', '1976-06-14', 'Male', 'O-', '67 Race Course', 'Madurai', 'Tamil Nadu', '625003', '9876543230', 'mohan.vikram@example.com', 'Heart condition'),
('Swathi', 'Siva', '1990-08-29', 'Female', 'B-', '34 Mount Road', 'Coimbatore', 'Tamil Nadu', '641003', '9876543231', 'swathi.siva@example.com', 'Anemia'),
('Dinesh', 'Ravi', '1995-09-18', 'Male', 'A+', '78 MG Road', 'Trichy', 'Tamil Nadu', '620003', '9876543232', 'dinesh.ravi@example.com', 'No medical history'),
('Harini', 'Madhavan', '1981-12-31', 'Female', 'AB-', '23 KK Nagar', 'Erode', 'Tamil Nadu', '638003', '9876543233', 'harini.madhavan@example.com', 'Diabetes'),
('Ajay', 'Varadharajan', '1987-04-20', 'Male', 'O+', '44 West Main Road', 'Salem', 'Tamil Nadu', '636003', '9876543234', 'ajay.varadharajan@example.com', 'Hypertension'),
('Bhuvana', 'Krishna', '1999-07-07', 'Female', 'A-', '12 East Street', 'Tirunelveli', 'Tamil Nadu', '627003', '9876543235', 'bhuvana.krishna@example.com', 'No medical history'),
('Saravanan', 'Kumar', '1980-02-09', 'Male', 'B+', '67 Gandhi Street', 'Vellore', 'Tamil Nadu', '632003', '9876543236', 'saravanan.kumar@example.com', 'Thyroid issues'),
('Indira', 'Muthukumar', '1978-10-15', 'Female', 'AB+', '99 MG Road', 'Dindigul', 'Tamil Nadu', '624003', '9876543237', 'indira.muthukumar@example.com', 'Heart condition');

-- Retrieve all blood recipients including personal, medical, and contact details.

SELECT * FROM recipient;

-- Table to store requests made by recipients for blood

CREATE TABLE blood_request (
    request_id INT PRIMARY KEY AUTO_INCREMENT,
    recipient_id INT NOT NULL,
    bank_id INT NOT NULL,
    request_date DATE NOT NULL,
    blood_type VARCHAR(5) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    status VARCHAR(20) DEFAULT 'Pending',
    CONSTRAINT fk_recipient_id1 FOREIGN KEY (recipient_id)
    REFERENCES recipient(recipient_id) ON DELETE CASCADE,
    CONSTRAINT fk_bank_id3 FOREIGN KEY (bank_id)
    REFERENCES blood_bank(bank_id) ON DELETE CASCADE
);
-- Sample insert into blood_request table

INSERT INTO blood_request (recipient_id, bank_id, request_date, blood_type, quantity, status) VALUES
(2, 2, '2024-03-02', 'A-', 1, 'Approved'),
(3, 3, '2024-03-03', 'B+', 3, 'Pending'),
(4, 4, '2024-03-04', 'AB+', 2, 'Rejected'),
(5, 5, '2024-03-05', 'O-', 1, 'Pending'),
(6, 6, '2024-03-06', 'B-', 2, 'Approved'),
(7, 7, '2024-03-07', 'A+', 1, 'Pending'),
(8, 8, '2024-03-08', 'AB-', 3, 'Pending'),
(9, 9, '2024-03-09', 'O+', 2, 'Approved'),
(10, 10, '2024-03-10', 'A-', 1, 'Pending'),
(11, 11, '2024-03-11', 'B+', 2, 'Pending'),
(12, 12, '2024-03-12', 'AB+', 3, 'Approved'),
(13, 13, '2024-03-13', 'O-', 1, 'Rejected'),
(14, 14, '2024-03-14', 'B-', 2, 'Pending'),
(15, 15, '2024-03-15', 'A+', 1, 'Approved'),
(16, 16, '2024-03-16', 'AB-', 3, 'Pending'),
(17, 17, '2024-03-17', 'O+', 2, 'Rejected'),
(18, 18, '2024-03-18', 'A-', 1, 'Pending'),
(19, 19, '2024-03-19', 'B+', 3, 'Approved'),
(20, 20, '2024-03-20', 'AB+', 2, 'Pending'),
(21, 21, '2024-03-21', 'O-', 1, 'Approved'),
(22, 22, '2024-03-22', 'B-', 2, 'Pending'),
(23, 23, '2024-03-23', 'A+', 3, 'Rejected'),
(24, 24, '2024-03-24', 'AB-', 2, 'Pending'),
(25, 25, '2024-03-25', 'O+', 1, 'Approved'),
(26, 26, '2024-03-26', 'A-', 2, 'Pending'),
(27, 27, '2024-03-27', 'B+', 3, 'Approved'),
(28, 28, '2024-03-28', 'AB+', 2, 'Pending');

-- Retrieve all blood requests made by recipients, along with the requested quantity, blood type, date, and status.

SELECT * FROM blood_request;

-- Table to record transfusions based on requests and inventory

CREATE TABLE blood_transfusion (
    transfusion_id INT PRIMARY KEY AUTO_INCREMENT,
    request_id INT NOT NULL,
    inventory_id INT NOT NULL,
    transfusion_date DATE NOT NULL,
    quantity_transfused INT NOT NULL CHECK (quantity_transfused > 0),
    CONSTRAINT fk_request_id FOREIGN KEY (request_id)
        REFERENCES blood_request(request_id) ON DELETE CASCADE,
    CONSTRAINT fk_inventory_id FOREIGN KEY (inventory_id)
        REFERENCES blood_inventory(inventory_id) ON DELETE CASCADE
);
-- Sample insert into blood_transfusion table

INSERT INTO blood_transfusion (request_id, inventory_id, transfusion_date, quantity_transfused) VALUES
(121, 5, '2024-03-05', 2),
(122, 8, '2024-03-06', 1),
(123, 12, '2024-03-07', 3),
(124, 15, '2024-03-08', 2),
(125, 18, '2024-03-09', 1),
(126, 21, '2024-03-10', 2),
(127, 25, '2024-03-11', 1),
(128, 28, '2024-03-12', 3),
(129, 30, '2024-03-13', 2),
(130, 2, '2024-03-14', 1),
(131, 4, '2024-03-15', 2),
(132, 6, '2024-03-16', 3),
(133, 9, '2024-03-17', 1),
(134, 11, '2024-03-18', 2),
(135, 14, '2024-03-19', 1),
(136, 16, '2024-03-20', 3),
(137, 19, '2024-03-21', 2),
(138, 22, '2024-03-22', 1),
(139, 24, '2024-03-23', 3),
(140, 26, '2024-03-24', 2),
(141, 29, '2024-03-25', 1),
(142, 1, '2024-03-26', 2),
(143, 3, '2024-03-27', 3),
(144, 7, '2024-03-28', 2),
(145, 10, '2024-03-29', 1),
(146, 13, '2024-03-30', 3),
(147, 17, '2024-03-31', 2),
(148, 20, '2024-04-01', 1);

-- Retrieve all transfusion records showing which blood request was fulfilled from which inventory, and the quantity transfused.

SELECT * FROM blood_transfusion;

----AddDonor------

DELIMITER //
CREATE PROCEDURE AddDonor(
    IN f_name VARCHAR(45),
    IN l_name VARCHAR(45),
    IN dob DATE,
    IN gen VARCHAR(10),
    IN btype VARCHAR(5),
    IN addr VARCHAR(60),
    IN city VARCHAR(45),
    IN state VARCHAR(45),
    IN pin VARCHAR(10),
    IN email VARCHAR(45)
)
BEGIN
    INSERT INTO donor(first_name, last_name, date_of_birth, gender, blood_type, address, city, state, pin_code, email)
    VALUES (f_name, l_name, dob, gen, btype, addr, city, state, pin, email);
END //
DELIMITER ;

-- Call procedure to add a donor

CALL AddDonor(
  'Ravi', 'Kumar', '1990-05-10', 'Male', 'A+', 
  '123 Main Street', 'Chennai', 'Tamil Nadu', '600001', 
  'ravi.kumar@example.com'
);
DELIMITER $$

CREATE PROCEDURE AddBloodRequest(
    IN r_id INT,
    IN b_id INT,
    IN r_date DATE,
    IN b_type VARCHAR(5),
    IN qty INT
)
BEGIN
    INSERT INTO blood_request (recipient_id, bank_id, request_date, blood_type, quantity)
    VALUES (r_id, b_id, r_date, b_type, qty);
END $$
DELIMITER ;

-- Call procedure to add a blood request

CALL AddBloodRequest(1, 1, '2024-04-01', 'O+', 2);

DELIMITER $$
CREATE PROCEDURE UpdateRequestStatus(
    IN req_id INT,
    IN new_status VARCHAR(20)
)
BEGIN
    UPDATE blood_request
    SET status = new_status
    WHERE request_id = req_id;
END $$
DELIMITER ;

-- Call procedure to update status of request_id 1 to 'Approved'

CALL UpdateRequestStatus(1, 'Approved');

DELIMITER $$
CREATE PROCEDURE GetDonorHistory(
    IN d_id INT
)
BEGIN
    SELECT * FROM donation
    WHERE donor_id = d_id;
END $$
DELIMITER ;

-- Call procedure to fetch donation history of donor_id 1

CALL GetDonorHistory(1);

DELIMITER $$
CREATE PROCEDURE CheckInventoryByBloodType(
    IN b_id INT,
    IN b_type VARCHAR(5)
)
BEGIN
    SELECT * FROM blood_inventory
    WHERE bank_id = b_id AND blood_type = b_type;
END $$
DELIMITER ;

-- Call procedure to check inventory of O+ blood in bank_id 1

CALL CheckInventoryByBloodType(1, 'O+');

DELIMITER $$
CREATE PROCEDURE AddDonation(
    IN d_id INT,
    IN b_id INT,
    IN d_date DATE,
    IN b_type VARCHAR(5),
    IN qty INT,
    IN results VARCHAR(45)
)
BEGIN
    INSERT INTO donation(donor_id, bank_id, donation_date, blood_type, quantity, screening_results)
    VALUES (d_id, b_id, d_date, b_type, qty, results);
END $$
DELIMITER ;

-- Call procedure to add donation from donor_id 1 to bank_id 1

CALL AddDonation(8, 1, '2024-04-01', 'O+', 2, 'Passed');

DELIMITER $$
CREATE PROCEDURE AddBloodInventory(
    IN b_id INT,
    IN b_type VARCHAR(5),
    IN qty INT,
    IN donate_date DATE,
    IN expire_date DATE
)
BEGIN
    INSERT INTO blood_inventory(bank_id, blood_type, quantity, donation_date, expiry_date)
    VALUES (b_id, b_type, qty, donate_date, expire_date);
END $$
DELIMITER ;

-- Call procedure to add blood inventory to bank_id 1

CALL AddBloodInventory(1, 'O+', 5, '2024-04-01', '2024-05-01');

DELIMITER $$
CREATE PROCEDURE ApproveRequestAndReduceInventory(
    IN req_id INT,
    IN inv_id INT,
    IN transfused_qty INT
)
BEGIN
    UPDATE blood_request
    SET status = 'Approved'
    WHERE request_id = req_id;

    UPDATE blood_inventory
    SET quantity = quantity - transfused_qty
    WHERE inventory_id = inv_id;
END $$
DELIMITER ;

-- Call procedure to approve request_id 1 and reduce 2 units from inventory_id 1

CALL ApproveRequestAndReduceInventory(1, 1, 2);

DELIMITER $$
CREATE PROCEDURE GetRecipientDetails(
    IN r_id INT
)
BEGIN
    SELECT * FROM recipient WHERE recipient_id = r_id;
END $$
DELIMITER ;

-- Call procedure to get details of recipient_id 1

CALL GetRecipientDetails(1);

DELIMITER $$
CREATE PROCEDURE AddTransfusionRecord(
    IN r_id INT,
    IN inv_id INT,
    IN t_date DATE,
    IN qty INT
)
BEGIN
    INSERT INTO blood_transfusion(request_id, inventory_id, transfusion_date, quantity_transfused)
    VALUES (r_id, inv_id, t_date, qty);
END $$
DELIMITER ;

-- Call procedure to add transfusion record for request_id 1 and inventory_id 1

CALL AddTransfusionRecord(1, 1, '2024-04-02', 2);

-- Procedure to get total quantity of a specific blood type in a specific bank

DELIMITER //
CREATE PROCEDURE get_blood_quantity(
    IN p_bank_id INT,
    IN p_blood_type VARCHAR(5),
    OUT p_total_quantity INT
)
BEGIN
    SELECT SUM(quantity)
    INTO p_total_quantity
    FROM blood_inventory
    WHERE bank_id = p_bank_id AND blood_type = p_blood_type;
END //
DELIMITER ;

CALL get_blood_quantity(1, 'O+', @qty);
SELECT @qty AS total_quantity;

-- Procedure to fetch recipient full name and blood type

DELIMITER //
CREATE PROCEDURE get_recipient_info(
    IN p_recipient_id INT,
    OUT p_name VARCHAR(100),
    OUT p_blood_type VARCHAR(5)
)
BEGIN
    SELECT CONCAT(first_name, ' ', last_name), blood_type
    INTO p_name, p_blood_type
    FROM recipient
    WHERE recipient_id = p_recipient_id;
END //
DELIMITER ;

CALL get_recipient_info(3, @name, @type);
SELECT @name AS full_name, @type AS blood_type;

-- View to show total blood available by bank and blood type

CREATE VIEW view_available_blood AS
SELECT 
    bb.bank_name,
    bi.blood_type,
    SUM(bi.quantity) AS total_units,
    bi.expiry_date
FROM blood_inventory bi
JOIN blood_bank bb ON bi.bank_id = bb.bank_id
GROUP BY bb.bank_name, bi.blood_type, bi.expiry_date
ORDER BY bb.bank_name, bi.blood_type;

-- View to show recent donations with donor and bank details

CREATE VIEW view_recent_donations AS
SELECT 
    d.donation_id,
    CONCAT(r.first_name, ' ', r.last_name) AS donor_name,
    b.bank_name,
    d.blood_type,
    d.donation_date,
    d.quantity,
    d.screening_results
FROM donation d
JOIN donor r ON d.donor_id = r.donor_id
JOIN blood_bank b ON d.bank_id = b.bank_id
ORDER BY d.donation_date DESC;

-- View to display pending blood requests

CREATE VIEW view_pending_requests AS
SELECT 
    br.request_id,
    CONCAT(r.first_name, ' ', r.last_name) AS recipient_name,
    bb.bank_name,
    br.blood_type,
    br.quantity,
    br.request_date,
    br.status
FROM blood_request br
JOIN recipient r ON br.recipient_id = r.recipient_id
JOIN blood_bank bb ON br.bank_id = bb.bank_id
WHERE br.status = 'Pending'
ORDER BY br.request_date DESC;

-- View to display transfusion history details

CREATE VIEW view_transfusion_history AS
SELECT 
    bt.transfusion_id,
    CONCAT(rc.first_name, ' ', rc.last_name) AS recipient_name,
    bb.bank_name,
    bi.blood_type,
    bt.quantity_transfused,
    bt.transfusion_date
FROM blood_transfusion bt
JOIN blood_request br ON bt.request_id = br.request_id
JOIN recipient rc ON br.recipient_id = rc.recipient_id
JOIN blood_inventory bi ON bt.inventory_id = bi.inventory_id
JOIN blood_bank bb ON bi.bank_id = bb.bank_id
ORDER BY bt.transfusion_date DESC;











