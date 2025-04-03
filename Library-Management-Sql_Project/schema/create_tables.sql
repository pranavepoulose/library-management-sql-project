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
