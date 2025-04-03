--  Create a database named library and following TABLES in the database: 
-- 1. Branch 2. Employee 3. Books 4. Customer 5. IssueStatus 6. ReturnStatus Attributes for the tables:

Create database library;

use library;
--  1. Branch table : Branch_no - Set as PRIMARY KEY Manager_Id Branch_address Contact_no.
CREATE TABLE Branch (
    Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(100),
    Contact_no bigint
);

-- 2. Employee Emp_Id – Set as PRIMARY KEY Emp_name Position Salary Branch_no
-- - Set as FOREIGN KEY and it refer Branch_no in Branch table.

CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

-- 3. Books ISBN - Set as PRIMARY KEY Book_title Category Rental_Price Status 
-- [Give yes if book available and no if book not available] Author Publisher.

CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Book_title VARCHAR(100),
    Category VARCHAR(100),
    Rental_Price DECIMAL(10, 2),
    Status ENUM('yes', 'no') NOT NULL,
    Author VARCHAR(50),
    Publisher VARCHAR(100)
); 

-- 4. Customer Customer_Id - Set as PRIMARY KEY Customer_name Customer_address Reg_date.

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,       
    Customer_name VARCHAR(50),       
    Customer_address VARCHAR(100),  
    Reg_date DATE                
);

-- 5. IssueStatus Issue_Id - Set as PRIMARY KEY Issued_cust 
-- – Set as FOREIGN KEY and it refer customer_id in CUSTOMER table Issued_book_name Issue_date Isbn_book
-- – Set as FOREIGN KEY and it should refer isbn in BOOKS table 

CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,          
    Issued_cust INT,                  
    Issued_book_name VARCHAR(100),    
    Issue_date DATE,                   
    ISBN_book VARCHAR(20),             
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),  -- Reference to the Customer table
    FOREIGN KEY (ISBN_book) REFERENCES Books(ISBN)                -- Reference to the Books table
);

-- 6. ReturnStatus Return_Id - Set as PRIMARY KEY Return_cust Return_book_name Return_date Isbn_book2 
-- Set as FOREIGN KEY and it should refer isbn in BOOKS table 

CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,       
    Return_cust INT,                   
    Return_book_name VARCHAR(100),     
    Return_date DATE,                 
    ISBN_book2 VARCHAR(20),             
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),  -- Reference to the Customer table
    FOREIGN KEY (ISBN_book2) REFERENCES Books(ISBN)                -- Reference to the Books table
);


