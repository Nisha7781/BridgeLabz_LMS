CREATE DATABASE LMS_DB;
USE LMS_DB;

CREATE TABLE User_Details (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255),
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  Password VARCHAR(255),
  contact_number VARCHAR(15),
  verified BOOLEAN,
  creator_stamp DATE,
  creator_user INT
);

INSERT INTO User_Details (email, first_name, last_name, Password, contact_number, verified, creator_stamp, creator_user) 
VALUES 
('nikita@example.com', 'Nikita', 'Patil', 'password123', '+91-9876543210', true, '2023-08-15', 1),
('raj@example.com', 'Raj', 'Kapoor', 'Pass@123', '+91-9876543211', true, '2023-08-16', 2),
('rahul.sharma@example.com', 'Rahul', 'Sharma', 'rahul@123', '+91-9876543212', false, '2023-08-17', 3),
('priya.patel@example.com', 'Priya', 'Patel', 'priya2023', '+91-9876543213', true, '2023-08-18', 4),
('amit.singh@example.com', 'Amit', 'Singh', 'singham_1', '+91-9876543214', true, '2023-08-19', 5),
('dilip.singh@example.com', 'Dilip', 'Singh', 'dii@dii', '+91-9876543215', false, '2023-08-20', 6),
('arjun.gupta@example.com', 'Arjun', 'Gupta', 'arjun123', '+91-9876543216', true, '2023-08-21', 7),
('dipa.patel@example.com', 'Dipa', 'Patel', 'diipa2023', '+91-9876543217', true, '2023-08-22', 8),
('divya.joshi@example.com', 'Divya', 'Joshi', 'divya_123', '+91-9876543218', false, '2023-08-23', 9),
('manoj.kumar@example.com', 'Manoj', 'Kumar', 'manoj@123', '+91-9876543219', true, '2023-08-24', 10);

SELECT * FROM User_Details;

CREATE TABLE Hired_Candidate (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  First_Name VARCHAR(50),
  Middle_Name VARCHAR(50),
  Last_Name VARCHAR(50),
  EmailId VARCHAR(255),
  Hired_City VARCHAR(100),
  Degree VARCHAR(100),
  Hired_Date DATE,
  Mobile_Number VARCHAR(15),
  Permanent_Pincode VARCHAR(10),
  Hired_Lab VARCHAR(100),
  Attitude VARCHAR(255),
  Communication_Remark VARCHAR(255),
  Knowledge_Remark VARCHAR(255),
  Aggregate_Remark VARCHAR(255),
  Status VARCHAR(50),
  Creator_Stamp DATE,
  Creator_User INT,
  FOREIGN KEY (Creator_User) REFERENCES User_Details(Id)
);

INSERT INTO Hired_Candidate (First_Name, Middle_Name, Last_Name, EmailId, Hired_City, Degree, Hired_Date, Mobile_Number, Permanent_Pincode, Hired_Lab, Attitude, Communication_Remark, Knowledge_Remark, Aggregate_Remark, Status, Creator_Stamp, Creator_User) 
VALUES 
('Raj', 'Rishi', 'Kapoor', 'raj@example.com', 'Hyderabad', 'B.Tech.', '2023-08-29', '+91-9876543228', '500001', 'BL Mumbai', 'Proactive', 'Very Good', 'Excellent', 'Very Good', 'Active', '2023-08-29',2 ),
('Rahul', 'Kumar', 'Sharma', 'rahul.sharma@example.com', 'Bangalore', 'B.E.', '2023-08-17', '+91-9876543220', '560001', 'BL Mumbai ', 'Positive ', 'Very Good', 'Excellent', 'Very good', 'Active', '2023-08-17', 3),
('Priya', 'Prakash', 'Patel', 'priya.patel@example.com', 'Mumbai', 'MBA', '2023-08-18', '+91-9876543221', '400001', 'BL Pune', 'Adaptable ', 'ok', 'good', 'good', 'Active', '2023-08-18', 4),
('Amit', 'Dilip', 'Singh', 'amit.singh@example.com', 'Delhi', 'M.Sc.', '2023-08-19', '+91-9876543222', '110001', 'BL Banglore', 'Positive', 'average', 'Good', 'average', 'Active', '2023-08-19', 5),
('Dilip', 'shekhar', 'Singh', 'dilip.singh@example.com', 'Lucknow', 'B.Sc.', '2023-08-31', '+91-9876543230', '226001', 'BL Banglore', 'Adaptable', 'Average', 'Very Good', 'Very Good', 'Active', '2023-08-31',6),
('Arjun', 'Manish', 'Gupta', 'arjun.gupta@example.com', 'Chennai', 'B.Tech.', '2023-08-21', '+91-9876543223', '600001', 'BL Mumbai', 'Proactive ', 'Good', 'Average', 'poor', 'Active', '2023-08-21', 7),
('Dipa', 'Sanjay', 'Patel', 'diipa.patel@example.com', 'Ahmedabad', 'MCA', '2023-09-01', '+91-9876543231', '380001', 'BL Banglore', 'Positive', 'Excellent', 'Good', 'Excellent', 'Active', '2023-11-01',8 ),
('Divya', 'Kamal', 'Joshi', 'divya.joshi@example.com', 'Kolhapur', 'MBA', '2023-08-30', '+91-9876543229', '700001', 'BL Pune', 'Positive', 'Good', 'Good', 'Good', 'Active', '2023-08-30',9 );

select * from Hired_Candidate;

CREATE TABLE Fellowship_Candidate (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  CIC_ID VARCHAR(20),
  First_Name VARCHAR(50),
  Middle_Name VARCHAR(50),
  Last_Name VARCHAR(50),
  EmailId VARCHAR(255),
  Hired_City VARCHAR(100),
  Degree VARCHAR(100),
  Hired_Date DATE,
  Mobile_Number VARCHAR(15),
  Permanent_Pincode VARCHAR(10),
  Hired_Lab VARCHAR(100),
  Attitude VARCHAR(255),
  Communication_Remark VARCHAR(255),
  Knowledge_Remark VARCHAR(255),
  Aggregate_Remark VARCHAR(255),
  Creator_Stamp DATETIME,
  Creator_User INT,
  Birth_Date DATE,
  Is_Birth_Date_Verified BOOLEAN,
  Parent_Name VARCHAR(100),
  Parent_Occupation VARCHAR(100),
  Parents_Mobile_Number VARCHAR(15),
  Parents_Annual_Salary DECIMAL(10, 2),
  Local_Address VARCHAR(50),
  Permanent_Address VARCHAR(50),
  Photo_Path VARCHAR(255),
  Joining_Date DATE,
  Candidate_Status VARCHAR(50),
  Personal_Information VARCHAR(50),
  Bank_Information VARCHAR(50),
  Educational_Information VARCHAR(50),
  Document_Status VARCHAR(50),
  Remark VARCHAR(50),
  FOREIGN KEY (Creator_User) REFERENCES User_Details(Id)
);

INSERT INTO Fellowship_Candidate (CIC_ID, First_Name, Middle_Name, Last_Name, EmailId, Hired_City, Degree, Hired_Date, Mobile_Number,
  Permanent_Pincode, Hired_Lab, Attitude, Communication_Remark, Knowledge_Remark, Aggregate_Remark, Creator_Stamp, Creator_User, Birth_Date, Is_Birth_Date_Verified,
  Parent_Name, Parent_Occupation, Parents_Mobile_Number, Parents_Annual_Salary, Local_Address, Permanent_Address, Photo_Path, Joining_Date, Candidate_Status,
  Personal_Information, Bank_Information, Educational_Information, Document_Status, Remark)  VALUES 
('CIC001', 'Raj', 'Rishi', 'Kapoor', 'raj@example.com', 'Hyderabad', 'B.Tech.', '2023-08-29', '+91-9876543228', '500001', 'BL Mumbai', 'Proactive', 'Very Good', 'Excellent', 'Very Good', '2023-08-29 10:30:00', 2, '1994-07-12', true, 'Rishi Kapoor', 'Engineer', '+91-9876543232', 1100000.00, 'Flat 105, XYZ Apartments', 'Flat 105, XYZ Apartments', '/photos/kiran_kumar.jpg', '2023-08-29', 'Accepted', 'Complete', 'Complete', 'Complete', 'Complete', 'Accepted'),
('CIC002', 'Rahul', 'Kumar', 'Sharma', 'rahul.sharma@example.com', 'Bangalore', 'B.E.', '2023-08-17', '+91-9876543220', '560001', 'BL Mumbai', 'Positive', 'Very Good', 'Excellent', 'Very good', '2023-08-17 10:30:00', 3, '1995-05-15', true, 'Rakesh Sharma', 'Engineer', '+91-9876543201', 1000000.00, 'Flat 101, ABC Apartments', 'Flat 101, ABC Apartments', '/photos/rahul_sharma.jpg', '2023-08-17', 'Accepted', 'Complete', 'Complete', 'Complete', 'Complete', 'Accepted'),
('CIC003', 'Priya', 'Prakash', 'Patel', 'priya.patel@example.com', 'Mumbai', 'MBA', '2023-08-18', '+91-9876543221', '400001', 'BL Pune', 'Adaptable', 'ok', 'good', 'good', '2023-08-18 11:45:00', 4, '1994-09-20', true, 'Prakash Patel', 'Banker', '+91-9876543202', 800000.00, 'Flat 102, XYZ Apartments', 'Flat 102, XYZ Apartments', '/photos/priya_patel.jpg', '2023-12-18', 'Accepted', 'Complete', 'Pending', 'Complete', 'Complete', 'Accepted'),
('CIC004', 'Amit', 'Dilip', 'Singh', 'amit.singh@example.com', 'Delhi', 'M.Sc.', '2023-08-19', '+91-9876543222', '110001', 'BL Banglore', 'Positive', 'Average', 'Good', 'Average', '2023-08-19 08:00:00', 5, '1996-12-10', true, 'Dilip Singh', 'Professor', '+91-9876543203', 1200000.00, 'Flat 103, LMN Apartments', 'Flat 103, LMN Apartments', '/photos/amit_singh.jpg', '2023-08-19', 'Rejected', 'Pending', 'Complete', 'Complete', 'Complete', 'Rejected'),
('CIC005', 'Dilip', 'Shekhar', 'Singh', 'dilip.singh@example.com', 'Lucknow', 'B.Sc.', '2023-08-31', '+91-9876543230', '226001', 'BL Banglore', 'Adaptable', 'Average', 'Very Good', 'Very Good', '2023-08-31 11:00:00', 6, '1995-03-05', true, 'Shekhar Singh', 'Lawyer', '+91-9876543234', 900000.00, 'Flat 20, PQR Towers', 'Flat 20, PQR Towers', '/photos/rajat_singh.jpg', '2023-12-31', 'Accepted', 'Complete', 'Complete', 'Complete', 'Complete', 'Accepted'),
('CIC006', 'Arjun', 'Manish', 'Gupta', 'arjun.gupta@example.com', 'Chennai', 'B.Tech.', '2023-08-21', '+91-9876543223', '600001', 'BL Mumbai', 'Proactive', 'Good', 'Average', 'Poor', '2023-08-21 09:30:00', 7, '1996-03-25', true, 'Manish Gupta', 'Businessman', '+91-9876543204', 1500000.00, 'Flat 104, PQR Apartments', 'Flat 104, PQR Apartments', '/photos/arjun_gupta.jpg', '2023-08-21', 'Pending', 'Pending', 'Pending', 'Pending', 'Pending', 'Pending'),
('CIC007', 'Dipa', 'Sanjay', 'Patel', 'diipa.patel@example.com', 'Ahmedabad', 'MCA', '2023-09-01', '+91-9876543231', '380001', 'BL Banglore', 'Positive', 'Excellent', 'Good', 'Excellent', '2023-09-01 11:15:00', 8, '1992-05-18', true, 'Sanjay Patel', 'Businessman', '+91-9876543235', 2000000.00, '10, Patel Colony', '10, Patel Colony', '/photos/sneha_patel.jpg', '2023-11-01', 'Accepted', 'Complete', 'Complete', 'Complete', 'Complete', 'Accepted'),
('CIC008', 'Divya', 'Kamal', 'Joshi', 'divya.joshi@example.com', 'Kolhapur', 'MBA', '2023-08-30', '+91-9876543229', '700001', 'BL Pune', 'Positive', 'Good', 'Good', 'Good', '2023-08-30 10:45:00', 9, '1993-11-24', true, 'Kamal Joshi', 'Manager', '+91-9876543233', 1500000.00, 'House No. 34, ABC Street', 'House No. 34, ABC Street', '/photos/ananya_roy.jpg', '2023-08-30', 'Accepted', 'Complete', 'Complete', 'Complete', 'Complete', 'Accepted'), 
('CIC009', 'Manoj', 'Hari', 'Kumar', 'manoj.kumar@example.com', 'Hyderabad', 'B.Tech.', '2020-08-29', '+91-9876543229', '500004', 'BL Pune', 'Proactive', 'Very Good', 'Excellent', 'Very Good', '2023-08-29 10:30:00', 10, '1994-07-12', true, 'Rishi Kapoor', 'Engineer', '+91-9876543232', 1100000.00, 'Flat 105, XYZ Apartments', 'Flat 105, XYZ Apartments', '/photos/kiran_kumar.jpg', '2019-02-22', 'Accepted', 'Complete', 'Complete', 'Complete', 'Complete', 'Accepted');

SELECT * FROM Fellowship_Candidate;

UPDATE Fellowship_Candidate SET Joining_Date = '2023-12-18' WHERE (Id = '3');
UPDATE Fellowship_Candidate SET Joining_Date = '2023-12-31' WHERE (Id = '5');


CREATE TABLE Candidate_Bank_Details (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  candidate_Id INT,
  Name VARCHAR(100),
  Account_Number VARCHAR(50),
  Is_Account_Num_Verified BOOLEAN,
  Ifsc_Code VARCHAR(20),
  Is_Ifsc_Code_Verified BOOLEAN,
  Pan_Number VARCHAR(20),
  Is_Pan_Number_Verified BOOLEAN,
  Aadhaar_Num VARCHAR(20),
  Is_Aadhaar_Num_Verified BOOLEAN,
  Creator_Stamp DATE,
  Creator_User INT,
  FOREIGN KEY (candidate_Id) REFERENCES Fellowship_Candidate(Id),
  FOREIGN KEY (Creator_User) REFERENCES User_Details(Id)
);

INSERT INTO Candidate_Bank_Details (
  candidate_Id, Name, Account_Number, Is_Account_Num_Verified, Ifsc_Code, Is_Ifsc_Code_Verified, Pan_Number,
  Is_Pan_Number_Verified, Aadhaar_Num, Is_Aadhaar_Num_Verified, Creator_Stamp, Creator_User) VALUES 
(1, 'Raj Kapoor', '2345678901', true, 'BCA2345678', true, 'BCDEF1234G', true, '234567890123', true, '2023-08-16', 2),
(2, 'Rahul Sharma', '3456789012', true, 'CAB3456789', true, 'CDEFG1234H', true, '345678901234', true, '2023-08-17', 3),
(3, 'Priya Patel', '4567890123', true, 'ABC4567890', true, 'DEFGH1234I', true, '456789012345', true, '2023-08-18', 4),
(4, 'Amit Singh', '1234567890', true, 'ABC1234567', true, 'ABCDE1234F', true, '123456789012', true, '2023-08-15', 5),
(5, 'Dilip Singh', '3456789012', true, 'CAB3456789', true, 'CDEFG1234H', true, '345678901234', true, '2023-08-17', 6),
(6, 'Arjun Gupta', '1234567890', true, 'ABC1234567', true, 'ABCDE1234F', true, '123456789012', true, '2023-08-15', 7),
(7, 'Dipa Patel', '4567890123', true, 'ABC4567890', true, 'DEFGH1234I', true, '456789012345', true, '2023-08-18', 8),
(8, 'Divya Joshi', '2345678901', true, 'BCA2345678', true, 'BCDEF1234G', true, '234567890123', true, '2023-08-16', 9);

SELECT * FROM Candidate_Bank_Details;

CREATE TABLE Candidate_Qualification (
  Id INT AUTO_INCREMENT PRIMARY KEY, 
  candidate_id INT,
  diploma VARCHAR(100),
  degree_name VARCHAR(100),
  is_degree_name_verified BOOLEAN,
  employee_discipline VARCHAR(100),
  is_employee_discipline_verified BOOLEAN,
  passing_year YEAR,
  is_passing_year_verified BOOLEAN,
  aggr_per DECIMAL(5, 2),
  is_aggr_per_verified BOOLEAN,
  final_year_per DECIMAL(5, 2),
  is_final_year_per_verified BOOLEAN,
  training_institute VARCHAR(100),
  is_training_institute_verified BOOLEAN,
  training_duration_month INT,
  is_training_duration_month_verified BOOLEAN,
  other_training VARCHAR(255),
  is_other_training_verified BOOLEAN,
  Creator_Stamp DATE,
  Creator_User INT,
  FOREIGN KEY (candidate_id) REFERENCES Fellowship_Candidate(Id),
  FOREIGN KEY (Creator_User) REFERENCES User_Details(Id)
);

INSERT INTO Candidate_Qualification (
  candidate_id, diploma, degree_name, is_degree_name_verified, employee_discipline, is_employee_discipline_verified, passing_year,
  is_passing_year_verified, aggr_per, is_aggr_per_verified, final_year_per, is_final_year_per_verified, training_institute, 
  is_training_institute_verified, training_duration_month, is_training_duration_month_verified, other_training, is_other_training_verified, Creator_Stamp, Creator_User)
  VALUES
(1, 'Diploma in Engineering', 'B.Tech.', true, 'Electrical Engineering', true, 2019, true, 79.00, true, 82.00, true, 'Engineering Institute', true, 24, true, 'Certificate in Embedded Systems', true, '2023-08-21', 2),
(2, 'Diploma in Engineering', 'B.E.', true, 'Engineering', true, 2021, true, 78.00, true, 68.00, true, 'Engineering Institute', true, 24, true, 'Certificate in Programming', true, '2023-08-16', 3),
(3, 'Diploma in Business', 'MBA', true, 'Business Administration', true, 2020, true, 85.00, true, 88.00, true, 'Business School', true, 24, true, 'Certificate in Marketing', true, '2023-08-18', 4),
(4, 'Diploma in Technology', 'M.Sc.', true, 'Technology', true, 2019, true, 82.50, true, 86.00, true, 'Technology Institute', true, 12, true, 'Certificate in Data Science', true, '2023-08-19', 5),
(5, 'Diploma in Engineering', 'B.Sc.', true, 'Engineering', true, 2017, true, 75.00, true, 78.00, true, 'Engineering Institute', true, 24, true, 'Certificate in Programming', true, '2023-08-17', 6),
(6, 'Diploma in Engineering', 'B.Tech.', true, 'Electrical Engineering', true, 2019, true, 79.68, true, 82.60, true, 'Engineering Institute', true, 24, true, 'Certificate in Embedded Systems', true, '2023-11-21', 7),
(7, 'Diploma in Technology', 'MCA.', true, 'Technology', true, 2023, true, 82.50, true, 86.70, true, 'Technology Institute', true, 12, true, 'Certificate in Data Science', true, '2024-03-19', 8),
(8, 'Diploma in Business', 'MBA', true, 'Business Administration', true, 2022, true, 86.00, true, 78.00, true, 'Business School', true, 24, true, 'Certificate in Marketing', true, '2023-09-18', 9);

SELECT * FROM Candidate_Qualification;

CREATE TABLE Candidate_Documents (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  candidate_id INT,
  doc_type VARCHAR(50),
  doc_path VARCHAR(255),
  Status VARCHAR(50),
  Creator_Stamp DATE,
  Creator_User INT,
  FOREIGN KEY (candidate_id) REFERENCES Fellowship_Candidate(Id),
  FOREIGN KEY (Creator_User) REFERENCES User_Details(Id)
);

INSERT INTO Candidate_Documents (candidate_id, doc_type, doc_path, Status, Creator_Stamp, Creator_User)
VALUES
(1, 'PAN Card', 'path/to/pan_card.pdf', 'Received', '2023-08-18', 2),
(2, 'Aadhar Card', 'path/to/aadhar_card.pdf', 'Pending', '2023-08-19', 3),
(3, 'PAN Card', 'path/to/pan_card.pdf', 'Received','2023-08-17', 4),
(4, 'Aadhar Card', 'path/to/aadhar_card.pdf', 'Pending','2023-08-21', 5),
(5, 'PAN Card', 'path/to/pan_card.pdf', 'Received', '2023-08-18', 6),
(6, 'Aadhar Card', 'path/to/aadhar_card.pdf', 'Received', '2023-08-18', 7),
(7, 'PAN Card', 'path/to/pan_card.pdf', 'Pending','2023-08-15', 8),
(8, 'Aadhar Card', 'path/to/aadhar_card.pdf', 'Pending','2023-08-21', 9);

SELECT * FROM Candidate_Documents;

CREATE TABLE Company (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  address VARCHAR(255),
  location VARCHAR(100),
  status VARCHAR(50),
  creator_stamp DATE,
  creator_user INT,
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Company (name, address, location, status, creator_stamp, creator_user)
VALUES
('Vinuculam', '123 Company St', 'Delhi', 'Active', '2024-02-21', 2),
('Hexaware', '132 Main road', 'Banglore', 'Active', '2024-01-11', 3),
('ABS', 'Hijevadi', 'Pune', 'Active', '2024-03-31', 4),
('Quality Kiosk', 'rupa solitaire', 'Navi Mumbai', 'Active', '2023-09-21', 5),
('Renix', '125 main St', 'Chennai', 'Active', '2023-12-21', 6),
('PlanetSpark', '125 main St', 'Chennai', 'Active', '2023-12-21', 8),
('Silicon stack', 'FC road', 'Pune', 'Active', '2023-11-20', 9),
('Tech Enterprises', '456 Tech Blvd', 'Mumbai', 'Active', '2024-02-17', 7);

SELECT * FROM Company;

CREATE TABLE Tech_Type (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  type_name VARCHAR(100),
  cur_status VARCHAR(50),
  creator_stamp DATE,
  creator_user INT,
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Tech_Type (type_name, cur_status, creator_stamp, creator_user) 
VALUES 
('Full Stack', 'Active', '2023-08-15', 3),
('Frontend', 'Active', '2023-08-16', 2),
('Backend', 'Active', '2023-08-17', 7),
('Mobile', 'Active', '2023-08-18', 4),
('Database', 'Active', '2023-08-19', 5),
('DevOps', 'Active', '2023-08-20', 6);

SELECT * FROM Tech_Type;

CREATE TABLE Tech_Stack (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  tech_name VARCHAR(100),
  image_path VARCHAR(255),
  framework VARCHAR(100),
  cur_status VARCHAR(50),
  creator_stamp DATE,
  creator_user INT,
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Tech_Stack (tech_name, image_path, framework, cur_status, creator_stamp, creator_user) 
VALUES 
('Java', '/images/java.png', 'Spring Boot', 'Active', '2023-08-15', 3),
('Python', '/images/python.png', 'Django', 'Active', '2023-08-16', 2),
('Mobile Development', '/images/mobile.png', 'React Native', 'Active', '2023-08-17', 4),
('PHP', '/images/php.png', 'Laravel', 'Active', '2023-08-18', 7),
('MongoDB', '/images/javascript.png', 'Node.js', 'Active', '2023-08-19', 5),
('Cloud Computing', '/images/cloud.png', 'AWS', 'Active', '2023-08-20', 6);

SELECT * FROM Tech_Stack;

CREATE TABLE Maker_Program (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  program_name VARCHAR(100),
  program_type VARCHAR(50),
  program_link VARCHAR(255),
  tech_stack_id INT,
  tech_type_id INT,
  is_program_approved BOOLEAN,
  Description VARCHAR(255),
  status VARCHAR(50),
  creator_stamp DATE,
  creator_user INT,
  FOREIGN KEY (tech_stack_id) REFERENCES Tech_Stack(Id),
  FOREIGN KEY (tech_type_id) REFERENCES Tech_Type(Id),
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Maker_Program (program_name, program_type, program_link, tech_stack_id, tech_type_id,
  is_program_approved, Description, status, creator_stamp, creator_user) VALUES 
('Java Full Stack', 'Offline Course', 'https://example.com/java-full-stack', 1, 1, true, 'Comprehensive course covering Java and related technologies for full-stack development.', 'Active', '2023-08-15', 3),
('Python', 'Online Course', 'https://example.com/python', 2, 2, true, 'Fundamental course for Python programming language.', 'Active', '2023-08-16', 2),
('Spring Boot', 'Offline Course', 'https://example.com/spring-boot', 1, 1, true, 'Introduction to Spring Boot framework for building Java applications.', 'Active', '2023-08-17', 9),
('React.js', 'Online Course', 'https://example.com/react-js',5, 2, true, 'Learn React.js for building interactive user interfaces.', 'Active', '2023-08-18', 4),
('Node.js', 'Online Course', 'https://example.com/node-js', 5, 2, true, 'Fundamental course for Node.js runtime environment.', 'Active', '2023-08-19', 5),
('Angular full stack', 'Online Course', 'https://example.com/angular', 1, 1, true, 'Introduction to Angular framework for web development.', 'Active', '2023-08-20', 6),
('Django', 'Online Course', 'https://example.com/django', 3, 4, true, 'Learn Django framework for building web applications with Python.', 'Active', '2023-08-21', 7),
('Ruby on Rails', 'Online Course', 'https://example.com/ruby-on-rails', 1, 1, true, 'Introduction to Ruby on Rails framework for web development.', 'Active', '2023-08-22', 8);

SELECT * FROM Maker_Program;


CREATE TABLE App_Parameters (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  key_type VARCHAR(50),
  key_value VARCHAR(50),
  key_text TEXT,
  cur_status VARCHAR(50),
  lastupd_user INT,
  lastupd_stamp DATETIME,
  creator_stamp DATETIME,
  creator_user INT,
  seq_num INT,
  FOREIGN KEY (lastupd_user) REFERENCES User_Details(Id),
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO App_Parameters (key_type, key_value, key_text, cur_status, lastupd_user, lastupd_stamp, creator_stamp, creator_user, seq_num)
VALUES
('DOC_STATUS', 'PND', 'Pending', 'ACTV', 2, NOW(), NOW(), 2, 1),
('DOC_STATUS', 'RCEVD', 'Received', 'ACTV', 3, NOW(), NOW(), 3, 2),
('CUR_STATUS', 'ACTV', 'Active', 'ACTV', 4, NOW(), NOW(), 4, 3),
('CUR_STATUS', 'IACTV', 'Inactive', 'ACTV', 5, NOW(), NOW(), 5, 4),
('BATCH_STATUS', 'INPROCESS', 'In Process', 'ACTV', 6, NOW(), NOW(), 6, 5),
('BATCH_STATUS', 'HOLD', 'Hold', 'ACTV', 7, NOW(), NOW(), 7, 6),
('BATCH_STATUS', 'COMPL', 'Completed', 'ACTV', 8, NOW(), NOW(), 8, 7);

SELECT * FROM App_Parameters;

CREATE TABLE Mentor (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  mentor_type VARCHAR(50),
  lab_id INT,
  Status VARCHAR(50),
  creator_stamp DATETIME,
  creator_user INT,
  FOREIGN KEY (lab_id) REFERENCES Lab(Id),
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Mentor (name, mentor_type, lab_id, Status, creator_stamp, creator_user)
VALUES 
('sunil', 'Lead', 1, 'Active', '2023-08-15 10:00:00', 4),
('venkat', 'Ideation', 3, 'Active', '2023-08-16 11:00:00', 3),
('pooja', 'Ideation', 1, 'Active', '2023-08-17 12:00:00', 5),
('aishwarya', 'Buddy', 2, 'Active', '2023-08-18 13:00:00', 6),
('Gunjan', 'Lead', 1, 'Active', '2023-08-19 14:00:00', 7),
('Nagendra', 'Ideation', 1, 'Active', '2023-08-20 15:00:00', 8),
('Roshni', 'Ideation', 2, 'Active', '2023-08-21 16:00:00', 2);

SELECT * FROM Mentor;

CREATE TABLE Lab (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  location VARCHAR(100),
  address VARCHAR(255),
  status VARCHAR(50),
  creator_stamp DATETIME,
  creator_user INT,
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Lab (name, location, address, status, creator_stamp, creator_user)
VALUES 
('BL Mumbai', 'Mumbai', '123 ABC Road, Mumbai', 'Active', '2023-08-15 10:00:00', 4),
('BL Pune', 'Pune', '456 XYZ Street, Pune', 'Active', '2023-08-16 11:00:00', 2),
('BL Bangalore', 'Bangalore', '789 LMN Avenue, Bangalore', 'Active', '2023-08-17 12:00:00', 3);

SELECT * FROM Lab;

CREATE TABLE Mentor_Ideation_Map (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  parent_mentor_id INT,
  mentor_id INT,
  status VARCHAR(50),
  creator_stamp DATETIME,
  creator_user INT,
  FOREIGN KEY (parent_mentor_id) REFERENCES Mentor(Id),
  FOREIGN KEY (mentor_id) REFERENCES Mentor(Id),
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Mentor_Ideation_Map (parent_mentor_id, mentor_id, status, creator_stamp, creator_user)
VALUES 
(1, 2, 'Active', '2023-08-15 10:00:00', 7),
(1, 3, 'Active', '2023-08-16 11:00:00', 2),
(2, 4, 'Active', '2023-08-17 12:00:00', 3),
(3, 5, 'Active', '2023-08-18 13:00:00', 4),
(4, 6, 'Active', '2023-08-19 14:00:00', 5),
(5, 7, 'Active', '2023-08-20 15:00:00', 6);

SELECT * FROM Mentor_Ideation_Map;

CREATE TABLE Mentor_Tech_Stack (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  mentor_id INT,
  tech_stack_id INT,
  Status VARCHAR(50),
  creator_stamp DATETIME,
  creator_user INT,
  FOREIGN KEY (mentor_id) REFERENCES Mentor(Id),
  FOREIGN KEY (tech_stack_id) REFERENCES Tech_Stack(Id),
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Mentor_Tech_Stack (mentor_id, tech_stack_id, Status, creator_stamp, creator_user)
VALUES 
(1, 1, 'Active', '2023-08-15 10:00:00', 8), 
(2, 2, 'Active', '2023-08-16 11:00:00', 2), 
(3, 3, 'Active', '2023-08-17 12:00:00', 3), 
(4, 1, 'Active', '2023-08-18 13:00:00', 4), 
(5, 5, 'Active', '2023-08-19 14:00:00', 5), 
(6, 6, 'Active', '2023-08-20 15:00:00', 6), 
(7, 4, 'Active', '2023-08-21 16:00:00', 7); 

SELECT * FROM Mentor_Tech_Stack;

CREATE TABLE Lab_Threshold (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  lab_id INT,
  lab_capacity INT,
  lead_threshold INT,
  ideation_engg_threshold INT,
  buddy_engg_threshold INT,
  status VARCHAR(50),
  creator_stamp DATETIME,
  creator_user INT,
  FOREIGN KEY (lab_id) REFERENCES Lab(Id),
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Lab_Threshold (lab_id, lab_capacity, lead_threshold, ideation_engg_threshold, buddy_engg_threshold, status, creator_stamp, creator_user)
VALUES
(1, 250, 20, 40, 60, 'Active', '2024-05-02 10:00:00', 4),
(2, 200, 15, 30, 45, 'Active', '2024-05-02 11:00:00', 2),
(3, 300, 25, 50, 75, 'Active', '2024-05-02 12:00:00', 3);

SELECT * FROM Lab_Threshold;

CREATE TABLE Company_Requirement (
  id INT AUTO_INCREMENT PRIMARY KEY,
  company_id INT,
  requested_month VARCHAR(30),
  city VARCHAR(100),
  is_doc_verification BOOLEAN,
  requirement_doc_path VARCHAR(255),
  no_of_engg INT,
  tech_stack_id INT,
  tech_type_id INT,
  maker_program_id INT,
  lead_id INT,
  ideation_engg_id INT,
  buddy_engg_id INT,
  special_remark VARCHAR(55),
  Status VARCHAR(50),
  creator_stamp DATETIME,
  creator_user INT,
  FOREIGN KEY (company_id) REFERENCES Company(Id),
  FOREIGN KEY (tech_stack_id) REFERENCES Tech_Stack(Id),
  FOREIGN KEY (tech_type_id) REFERENCES Tech_Type(Id),
  FOREIGN KEY (maker_program_id) REFERENCES Maker_Program(Id),
  FOREIGN KEY (lead_id) REFERENCES Mentor(Id),
  FOREIGN KEY (ideation_engg_id) REFERENCES Mentor(Id),
  FOREIGN KEY (buddy_engg_id) REFERENCES Mentor(Id),
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Company_Requirement (company_id, requested_month, city, is_doc_verification, requirement_doc_path, no_of_engg, tech_stack_id, tech_type_id, maker_program_id, lead_id, ideation_engg_id, buddy_engg_id, special_remark, Status, creator_stamp, creator_user) VALUES 
(1, 'May 2024', 'Mumbai', true, '/documents/requirement.pdf', 10, 1, 1, 1, 1, 2, 3, 'Requires 10 engineers for a Java Full Stack project', 'Active', NOW(), 2),
(2, 'April 2024', 'Bangalore', true, '/documents/requirement.pdf', 8, 2, 2, 2, 2, 3, 4, 'Need 8 engineers proficient in Python', 'Active', NOW(), 6),
(3, 'May 2024', 'Pune', true, '/documents/requirement.pdf', 15, 1, 1, 3, 3, 4, 5, 'Seeking 15 engineers skilled in Spring Boot ', 'Active', NOW(), 3),
(4, 'February 2024', 'Delhi', true, '/documents/requirement.pdf', 12, 4, 2, 4, 4, 5, 6, 'Requires 12 engineers with expertise in React.js', 'Active', NOW(), 4),
(5, 'June 2023', 'Hyderabad', true, '/documents/requirement.pdf', 20, 1, 2, 5, 5, 4, 7, '20 engineers with expertise in Spring Boot', 'Active', NOW(), 5),
(6, 'July 2024', 'Chennai', true, '/documents/requirement.pdf', 10, 3, 1, 6, 7, 3, 3, 'Need 10 engineers proficient in Angular', 'Active', NOW(), 9),
(5, 'May 2024', 'Kolkata', true, '/documents/requirement.pdf', 15, 2, 2, 7, 4, 5, 2, 'Requires 15 engineers with expertise in React.js', 'Active', NOW(), 7),
(3, 'June 2024', 'Ahmedabad', true, '/documents/requirement.pdf', 18, 4, 1, 5, 5, 2, 1, 'Seeking 18 engineers skilled in Node.js', 'Active', NOW(), 8);

SELECT * FROM Company_Requirement;

CREATE TABLE Candidate_Stack_Assignment (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  candidate_id INT,
  stack_id INT,
  assigned_date DATE,
  status VARCHAR(50),
  creator_stamp DATETIME,
  creator_user INT,
  FOREIGN KEY (candidate_id) REFERENCES Fellowship_Candidate(Id),
  FOREIGN KEY (stack_id) REFERENCES Tech_Stack(Id),
  FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);

INSERT INTO Candidate_Stack_Assignment (candidate_id, stack_id, assigned_date, status, creator_stamp, creator_user) VALUES 
(1, 1, '2023-08-15', 'Active', '2023-08-15 10:00:00', 2),
(2, 2, '2023-08-16', 'Active', '2023-08-16 12:00:00', 3),
(3, 3, '2023-08-17', 'Active', '2023-08-17 01:00:00', 4),
(4, 4, '2023-08-18', 'Active', '2023-08-18 10:30:00', 5),
(5, 3, '2023-12-15', 'Active', '2023-08-15 10:00:00', 6),
(6, 2, '2024-02-16', 'Active', '2024-02-16 12:50:00', 7),
(7, 5, '2024-03-17', 'Active', '2024-03-17 01:15:00', 8),
(8, 4, '2023-08-30', 'Active', '2023-08-30 11:30:00', 9);

SELECT * FROM Candidate_Stack_Assignment;
