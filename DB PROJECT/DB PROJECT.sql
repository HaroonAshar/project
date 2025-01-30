create database db_project; 

use db_project;

CREATE TABLE Supplier (
    Supplier_id INT PRIMARY KEY,
    Supplier_Name CHAR(30),
    Supplier_Type VARCHAR(50), -- Assuming Supplier Type can have multiple values
    Website VARCHAR(30), -- Optional attribute
    Phone_Number INT
);
CREATE TABLE Customer (
    Customer_id INT PRIMARY KEY,
    Customer_Name CHAR(40),
    Street VARCHAR(50), -- Composite attribute split into Street, City, House Number
    City VARCHAR(30),
    House_Number VARCHAR(10),
    Products_Purchased INT,
    Email VARCHAR(30)
);
CREATE TABLE Materials (
    Material_id INT PRIMARY KEY,
    Grade VARCHAR(10),
    Location VARCHAR(40),
    Quantity INT,
    Material_Type VARCHAR(20) -- Multivalued: Mineral, Ore, Oil, Gas
);

CREATE TABLE Workers (
    Worker_id INT PRIMARY KEY,
    Role CHAR(30),
    Shift_schedule CHAR(30),
    Worker_Name CHAR(30),
    Skills CHAR(20)
);
CREATE TABLE Equipment (
    Equipment_id INT PRIMARY KEY,
    Model INT,
    Equipment_Type VARCHAR(30), -- Multivalued: Drill, Excavator, Truck
    Maintenance_history VARCHAR(30),
    Capacity INT,
    Serial_Number INT
);
CREATE TABLE Crafting_Staff (
    Crafting_Staff_id INT PRIMARY KEY,
    Experience_Level CHAR(30),
    Contact_info VARCHAR(40),
    Crafting_Staff_Name CHAR(30)
);
CREATE TABLE Supervisor (
    CNIC INT PRIMARY KEY,
    Experience CHAR(20) ,
    Joining_Year INT,
    Supervisor_Name CHAR(30)
);
CREATE TABLE Equipment_Regulations (
    Env_reg_id INT PRIMARY KEY,
    Issuing_Authority VARCHAR(40),
    Compliance_Requirement VARCHAR(500),
    Description VARCHAR(200),
    Title_Name CHAR(40),
    Regulation_Number INT -- Multivalued: Junior Worker Reg, Senior Worker Reg
);

CREATE TABLE Training_Programs (
    Program_id INT PRIMARY KEY,
    TP_Name CHAR(50),
    Duration DATE,
    Description CHAR(50),
    Trainer CHAR(20),
    Skills_Covered CHAR(100)
);
CREATE TABLE Marketing_and_Sales_Department (
    MSD_id INT PRIMARY KEY,
    MSD_name CHAR(50),
    Department_Head CHAR(20),
    Sales_Target CHAR(60),
    Sales_Channels VARCHAR(50)
);
CREATE TABLE Location (
    Location_id INT PRIMARY KEY,
    Name CHAR(50),
    Coordinates VARCHAR(40),
    Type CHAR(30),
    Capacity FLOAT -- Assuming this is a FLOAT data type
);
INSERT INTO Supplier (Supplier_id, Supplier_Name, Supplier_Type, Website, Phone_Number)
VALUES
    (1, 'ABC Suppliers', 'Material Supplier', 'www.abcsuppliers.com', 1234567890),
    (2, 'XYZ Enterprises', 'Equipment Supplier', 'www.xyzent.com', 9876543210),
    (3, 'Global Imports', 'Material Supplier, Service Provider', NULL, 5551112222),
    (4, 'TechGear Solutions', 'Equipment Supplier', 'www.techgear.com', 7778889999),
    (5, 'Industrial Supplies Ltd.', 'Material Supplier, Equipment Supplier', NULL, 4443332222),
    (6, 'Quality Metals Inc.', 'Material Supplier', 'www.qualitymetals.com', 8889990000),
    (7, 'TechPro Solutions', 'Equipment Supplier', 'www.techprosolutions.com', 6667778888),
    (8, 'Global Parts Distributors', 'Material Supplier', NULL, 3334445555),
    (9, 'Alliance Industrial', 'Equipment Supplier', 'www.allianceindustrial.com', 2223334444),
    (10, 'Supreme Plastics', 'Material Supplier', 'www.supremeplastics.com', 1112223333);

INSERT INTO Customer (Customer_id, Customer_Name, Street, City, House_Number, Products_Purchased, Email)
VALUES
    (1, 'ABC Inc.', '123 Main St', 'Cityville', '101', 50, 'abc@abcinc.com'),
    (2, 'XYZ Corp.', '456 Center Ave', 'Townsville', '202', 30, 'xyz@xyzcorp.com'),
    (3, 'Global Trading Co.', '789 North Rd', 'Metropolis', '303', 20, 'info@globaltrading.com'),
    (4, 'Tech Solutions Ltd.', '101 Tech Park', 'Innovation City', '404', 10, NULL),
    (5, 'Industrial Tech Group', '333 Industrial Blvd', 'Manufacture City', '505', 15, 'info@industrialtech.com'),
    (6, 'Quality Products Inc.', '555 Quality Rd', 'Quality Town', '606', 25, 'contact@qualityproducts.com'),
    (7, 'Precision Manufacturing', '777 Precision Ave', 'Precision City', '707', 12, 'info@precisionmfg.com'),
    (8, 'Global Enterprises', '999 Enterprise Pkwy', 'Enterprise City', '808', 18, 'contact@globalent.com'),
    (9, 'Superior Solutions', '222 Solution St', 'Solutionville', '909', 8, 'info@superiorsolutions.com'),
    (10, 'Innovative Industries', '444 Innovation Dr', 'Innovate City', '1010', 5, NULL);

INSERT INTO Materials (Material_id, Grade, Location, Quantity, Material_Type)
VALUES
    (1, 'Steel', 'Warehouse A', 100, 'Mineral'),
    (2, 'Plastic', 'Storage Room 1', 200, 'Ore'),
    (3, 'Aluminum', 'Warehouse B', 150, 'Mineral'),
    (4, 'Copper', 'Warehouse C', 120, 'Ore'),
    (5, 'Glass', 'Warehouse D', 80, 'Mineral'),
    (6, 'Wood', 'Storage Room 2', 90, 'Ore'),
    (7, 'Rubber', 'Warehouse E', 110, 'Oil'),
    (8, 'Electronic Components', 'Storage Room 3', 70, 'Gas'),
    (9, 'Chemicals', 'Warehouse F', 60, 'Mineral'),
    (10, 'Textiles', 'Storage Room 4', 40, 'Ore');

INSERT INTO Workers (Worker_id, Role, Shift_schedule, Worker_Name, Skills)
VALUES
    (1, 'Assembler', 'Day Shift', 'John Smith', 'Assembly'),
    (2, 'Technician', 'Night Shift', 'Emily Brown', 'Repair'),
    (3, 'Engineer', 'Day Shift', 'Michael Johnson', 'Design'),
    (4, 'Operator', 'Night Shift', 'Jessica Lee', 'Machine Operation'),
    (5, 'Supervisor', 'Day Shift', 'David Wilson', 'Leadership'),
    (6, 'Inspector', 'Night Shift', 'Sarah Davis', 'Quality Control'),
    (7, 'Electrician', 'Day Shift', 'Kevin Moore', 'Electrical'),
    (8, 'Mechanic', 'Night Shift', 'Jennifer Taylor', 'Maintenance'),
    (9, 'Technologist', 'Day Shift', 'Robert Garcia', 'Testing'),
    (10, 'Manager', 'Day Shift', 'Laura Martinez', 'Management');

INSERT INTO Equipment (Equipment_id, Model, Equipment_Type, Maintenance_history, Capacity, Serial_Number)
VALUES
    (1, 1001, 'Drill', 'Monthly checkups', 500, 123456),
    (2, 2002, 'Excavator', 'Quarterly inspections', 50, 789012),
    (3, 3003, 'Truck', 'Bi-annual servicing', 3000, 345678),
    (4, 4004, 'Drill', 'Weekly maintenance', 10, 901234),
    (5, 5005, 'Excavator', 'As needed repairs', 100, 567890),
    (6, 6006, 'Truck', 'Annual overhauls', 5, 654321),
    (7, 7007, 'Drill', 'Monthly greasing', 20, 432109),
    (8, 8008, 'Excavator', 'Seasonal check-ups', 5000, 210987),
    (9, 9009, 'Truck', 'Scheduled maintenance', 500, 789012),
    (10, 10010, 'Drill', 'Routine checks', 200, 876543);

INSERT INTO Crafting_Staff (Crafting_Staff_id, Experience_Level, Contact_info, Crafting_Staff_Name)
VALUES
    (1, 'Senior', 'senior@craftingstaff.com', 'Emma Thompson'),
    (2, 'Junior', 'junior@craftingstaff.com', 'Daniel White'),
    (3, 'Intermediate', 'intermediate@craftingstaff.com', 'Olivia Green'),
    (4, 'Senior', 'senior2@craftingstaff.com', 'William Clark'),
    (5, 'Junior', 'junior2@craftingstaff.com', 'Sophia Hall'),
    (6, 'Intermediate', 'intermediate2@craftingstaff.com', 'James Baker'),
    (7, 'Senior', 'senior3@craftingstaff.com', 'Emily Walker'),
    (8, 'Junior', 'junior3@craftingstaff.com', 'Alexander Hill'),
    (9, 'Intermediate', 'intermediate3@craftingstaff.com', 'Mia King'),
    (10, 'Senior', 'senior4@craftingstaff.com', 'Noah Scott');



INSERT INTO Supervisor (CNIC, Joining_Year, Supervisor_Name)
VALUES
    (11112233, 2010, 'Mark Johnson'),
    (99001122, 2012, 'Sophie Brown'),
    (88990011, 2008, 'Jacob Wilson'),
    (77889900, 2005, 'Isabella Martinez'),
    (66778899, 2015, 'Nathan Davis'),
    (55667788, 2017, 'Ava Garcia'),
    (44556677, 2019, 'Logan Rodriguez'),
    (33445566, 2011, 'Sophia Miller'),
    (22334455, 2013, 'Ethan Thompson'),
    (11223344, 2014, 'Madison Harris');

INSERT INTO Equipment_Regulations (Env_reg_id, Issuing_Authority, Compliance_Requirement, Description, Title_Name, Regulation_Number)
VALUES
    (1, 'Health and Safety Department', 'Safety standards for equipment operation', 'Ensure safe operation of all machinery', 'Safety Standards', 12345),
    (2, 'Environmental Protection Agency', 'Environmental regulations for equipment emissions', 'Reduce environmental impact of equipment', 'Environmental Regulations', 23456),
    (3, 'Occupational Safety Authority', 'Workplace safety guidelines for equipment usage', 'Promote safe working conditions', 'Safety Guidelines', 34567),
    (4, 'Quality Assurance Institute', 'Quality standards for equipment manufacturing', 'Ensure high quality equipment production', 'Quality Standards', 45678),
    (5, 'Labor Standards Board', 'Labor regulations for equipment operators', 'Ensure fair labor practices', 'Labor Regulations', 56789),
    (6, 'Industry Regulatory Commission', 'Industry-specific regulations for equipment usage', 'Compliance with industry norms', 'Industry Regulations', 67890),
    (7, 'Energy Regulatory Authority', 'Energy efficiency guidelines for industrial machinery', 'Promote energy-saving practices', 'Energy Efficiency Guidelines', 78901),
    (8, 'Fire Safety Department', 'Fire safety measures required', 'Fire safety regulations for equipment storage areas', 'Fire Safety Regulations', 89012),
    (9, 'Facility Management Office', 'Facility usage policies', 'Facility management regulations for equipment operation', 'Facility Management Regulations', 90123),
    (10, 'Industrial Standards Institute', 'Industry standards compliance', 'Compliance with industry standards for equipment manufacturing', 'Industry Standards Compliance', 12345);

INSERT INTO Training_Programs (Program_id, TP_Name, Duration, Description, Trainer, Skills_Covered)
VALUES
    (1, 'Equipment Maintenance Workshop', '2024-07-15', 'Hands-on training for equipment maintenance', 'John Doe', 'Maintenance techniques'),
    (2, 'Safety and Compliance Training', '2024-08-20', 'Training on safety regulations and compliance', 'Jane Smith', 'Safety procedures'),
    (3, 'Quality Control Seminar', '2024-09-10', 'Seminar on quality control measures', 'Emily Johnson', 'Quality assurance techniques'),
    (4, 'Leadership Development Program', '2024-10-05', 'Program for developing leadership skills', 'David Brown', 'Leadership principles'),
    (5, 'Technical Skills Enhancement', '2024-11-15', 'Training to enhance technical skills', 'Sarah Wilson', 'Technical skills improvement'),
    (6, 'Machine Operation Training', '2024-12-01', 'Training for effective machine operation', 'Michael Clark', 'Machine operation techniques'),
    (7, 'Emergency Response Workshop', '2025-01-10', 'Workshop on emergency response procedures', 'Jessica Martinez', 'Emergency response protocols'),
    (8, 'Environmental Compliance Training', '2025-02-15', 'Training on environmental compliance', 'Kevin Moore', 'Environmental regulations'),
    (9, 'Advanced Manufacturing Techniques', '2025-03-20', 'Training on advanced manufacturing techniques', 'Olivia Taylor', 'Advanced manufacturing skills'),
    (10, 'Customer Service Excellence', '2025-04-05', 'Program for enhancing customer service skills', 'Daniel Garcia', 'Customer service techniques');


INSERT INTO Marketing_and_Sales_Department (MSD_id, MSD_name, Department_Head, Sales_Target, Sales_Channels)
VALUES
    (1, 'Global Marketing Solutions', 'Andrew Brown', 'Increase sales by 20% in the next quarter', 'Online, Retail, B2B'),
    (2, 'Regional Sales Group', 'Sophia Clark', 'Expand market reach in new territories', 'Direct sales, Distributors'),
    (3, 'Digital Marketing Team', 'Ryan Martinez', 'Achieve 30% growth in online sales', 'Digital ads, Social media'),
    (4, 'Corporate Sales Division', 'Emma Rodriguez', 'Target corporate clients for significant contracts', 'Corporate presentations, Networking'),
    (5, 'Product Development and Marketing', 'Lucas Hernandez', 'Launch new products successfully', 'Product launches, Marketing campaigns'),
    (6, 'Retail Sales Department', 'Isabella Lopez', 'Increase retail store sales by 15%', 'In-store promotions, Customer engagement'),
    (7, 'Online Marketing Unit', 'Gabriel Ramirez', 'Enhance online presence and customer engagement', 'SEO, PPC advertising'),
    (8, 'Sales Operations Team', 'Sophie Flores', 'Optimize sales processes for efficiency', 'Sales analytics, CRM integration'),
    (9, 'Strategic Partnerships Division', 'Ethan Gonzalez', 'Form strategic partnerships for mutual growth', 'Partnership negotiations, Collaborations'),
    (10, 'Customer Relationship Management', 'Victoria Cruz', 'Improve customer retention by 25%', 'Customer loyalty programs, Feedback management');


INSERT INTO Location (Location_id, Name, Coordinates, Type, Capacity)
VALUES
    (1, 'Headquarters', '40.7128° N, 74.0060° W', 'Office', 1000),
    (2, 'Warehouse A', '34.0522° N, 118.2437° W', 'Warehouse', 5000),
    (3, 'Production Facility', '37.7749° N, 122.4194° W', 'Manufacturing', 3000),
    (4, 'Tech Park', '42.3601° N, 71.0589° W', 'Tech Campus', 1500),
    (5, 'Retail Store', '41.8781° N, 87.6298° W', 'Retail', 200),
    (6, 'Distribution Center', '39.9526° N, 75.1652° W', 'Distribution', 10000),
    (7, 'Research Lab', '32.7157° N, 117.1611° W', 'Research', 500),
    (8, 'Training Center', '29.7604° N, 95.3698° W', 'Training', 300),
    (9, 'Corporate Office', '33.4484° N, 112.0740° W', 'Corporate', 800),
    (10, 'Service Center', '28.5383° N, 81.3792° W', 'Service', 400);



-- 1. Retrieve all suppliers and the materials they supply:
SELECT 
    S.Supplier_Name,
    M.Material_id,
    M.Grade,
    M.Material_Type
FROM 
    Supplier S
JOIN 
    Materials M ON S.Supplier_Type LIKE '%' || M.Material_Type || '%';

-- 2. Find customers who have purchased more than 20 products:
SELECT 
    Customer_Name, 
    Products_Purchased 
FROM 
    Customer 
WHERE 
    Products_Purchased > 20;

-- 3. Retrieve the details of equipment maintained by a specific worker (e.g., 'Kevin Moore').
SELECT 
    E.Equipment_id,
    E.Model,
    E.Equipment_Type,
    E.Maintenance_history,
    E.Capacity
FROM 
    Equipment E
JOIN 
    Workers W ON E.Equipment_Type LIKE '%' || W.Skills || '%'
WHERE 
    W.Worker_Name = 'Kevin Moore';

-- 4. List all training programs along with the name of the supervisor who has the most experience.
SELECT 
    TP.TP_Name,
    TP.Duration,
    TP.Description,
    TP.Trainer,
    S.Supervisor_Name
FROM 
    Training_Programs TP
JOIN 
    Supervisor S ON S.CNIC = (
        SELECT 
            CNIC 
        FROM 
            Supervisor 
        ORDER BY 
            Experience DESC 
        LIMIT 1
    );


-- 5.  Find the names of customers who have not provided an email address.
SELECT 
    Customer_Name 
FROM 
    Customer 
WHERE 
    Email IS NULL;

-- 6. List all equipment types and their maintenance history that are stored in a specific location (e.g., 'Warehouse A').
SELECT 
    E.Equipment_Type,
    E.Maintenance_history
FROM 
    Equipment E
JOIN 
    Location L ON E.Equipment_Type LIKE '%' || L.Type || '%'
WHERE 
    L.Name = 'Warehouse A';


