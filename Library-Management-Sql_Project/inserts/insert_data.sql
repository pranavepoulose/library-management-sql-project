-- 1 Insert into Branch table 

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES
(1, 3001, 'Kochi Branch, Marine Drive', 9846023456),
(2, 3002, 'Thiruvananthapuram Branch, MG Road', 9495123456),
(3, 3003, 'Kozhikode Branch, Beach Road', 9746123456),
(4, 3004, 'Alappuzha Branch, Boat Jetty', 9896723456),
(5, 3005, 'Trissur Branch, Swaraj Round', 9977823456);

select * from branch;

-- 2 Insert into Employee table

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES
(101, 'George Mathew', 'Manager', 65000, 3),  
(102, 'Sreeja Nair', 'Assistant Manager', 48000, 1), 
(103, 'Benedict Thomas', 'Clerk', 30000, 4), 
(104, 'Lakshmi Pillai', 'Manager', 72000, 2), 
(105, 'Samuel Joseph', 'Assistant Manager', 52000, 5),  
(106, 'Maya Krishnan', 'Clerk', 35000, 1), 
(107, 'Rita Fernandez', 'Manager', 75000, 3), 
(108, 'Anjali Menon', 'Assistant Manager', 49000, 2),  
(109, 'John Abraham', 'Clerk', 31000, 5), 
(110, 'Vijayakumar Nair', 'Manager', 80000, 4), 
(111, 'Maria Sebastian', 'Assistant Manager', 53000, 3),  
(112, 'Krishna Kumar', 'Clerk', 33000, 2), 
(113, 'Elisabeth Varghese', 'Manager', 72000, 5), 
(114, 'Divya Pillai', 'Assistant Manager', 51000, 1), 
(115, 'Thomas Koshy', 'Clerk', 34000, 4),  
(116, 'Sita Menon', 'Manager', 78000, 2),  
(117, 'Daniel Joseph', 'Assistant Manager', 54000, 3), 
(118, 'Prathibha Nair', 'Clerk', 32000, 5),  
(119, 'Peter George', 'Manager', 75000, 1),  
(120, 'Nandini Pillai', 'Assistant Manager', 50000, 4);

select * from employee;

-- 3 Insert into Books table

INSERT INTO Books 
VALUES
('978-0-123456-47-2', 'The Great Gatsby', 'Fiction', 50.00, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-321876-55-9', 'To Kill a Mockingbird', 'Fiction', 45.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.'),
('978-0-123456-78-8', '1984', 'Dystopian', 60.00, 'no', 'George Orwell', 'Secker & Warburg'),
('978-0-123456-89-0', 'Moby Dick', 'Classic', 40.00, 'yes', 'Herman Melville', 'Harper & Brothers'),
('978-0-123456-90-0', 'Pride and Prejudice', 'Romance', 55.00, 'yes', 'Jane Austen', 'T. Egerton'),
('978-0-123456-91-7', 'War and Peace', 'Historical', 70.00, 'yes', 'Leo Tolstoy', 'The Russian Messenger'),
('978-0-123456-92-4', 'The Catcher in the Rye', 'Fiction', 50.00, 'no', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-123456-93-1', 'Brave New World', 'Dystopian', 65.00, 'yes', 'Aldous Huxley', 'Chatto & Windus'),
('978-0-123456-94-8', 'The Odyssey', 'Classic', 45.00, 'yes', 'Homer', 'Penguin Classics'),
('978-0-123456-95-5', 'Anna Karenina', 'Classic', 75.00, 'no', 'Leo Tolstoy', 'The Russian Messenger'),
('978-0-987654-32-1', 'Chemmeen', 'Literature', 40.00, 'yes', 'Thakazhi Sivasankara Pillai', 'DC Books'),
('978-0-987654-32-2', 'Khasakkinte Itihasam', 'Literature', 60.00, 'yes', 'O.V. Vijayan', 'Vikas Publications'),
('978-0-987654-32-3', 'Manju', 'Literature', 45.00, 'no', 'M.T. Vasudevan Nair', 'Vikas Publications'),
('978-0-987654-32-4', 'Randidangazhi', 'Literature', 50.00, 'yes', 'Thakazhi Sivasankara Pillai', 'DC Books'),
('978-0-987654-32-5', 'The God of Small Things', 'Literature', 65.00, 'yes', 'Arundhati Roy', 'Penguin Books India'),
('978-0-987654-32-6', 'Bhima', 'Literature', 55.00, 'yes', 'N.S. Madhavan', 'DC Books'),
('978-0-987654-32-7', 'Sthitaprajna', 'Philosophy', 50.00, 'no', 'S. K. Pottekkatt', 'Vikas Publications');

select * from books;

-- 4 Insert into Customer table

INSERT INTO Customer
VALUES
(101, 'George Mathew', '123 Main St, Kochi', '2021-08-01'), 
(102, 'Sreeja Nair', '456 Oak St, Thiruvananthapuram', '2020-11-12'), 
(103, 'Ali Mohammed', '789 Pine St, Kozhikode', '2022-03-15'), 
(104, 'Rita Fernandez', '101 Maple St, Alappuzha', '2021-12-25'), 
(105, 'Lakshmi Pillai', '202 Birch St, Kottayam', '2022-07-30'),
(106, 'Zainab Khaleel', '303 Cedar St, Malappuram', '2021-05-20'), 
(107, 'Thomas Koshy', '404 Willow St, Thrissur', '2020-09-18'),
(108, 'Anjali Menon', '505 Elm St, Calicut', '2022-01-01'), 
(109, 'Ibrahim Ahamed', '606 Redwood St, Ernakulam', '2021-06-22'), 
(110, 'Deepak R', '707 Pine St, Palakkad', '2021-04-15');

select * from customer;

-- 5 Insert into IssueStatus table

INSERT INTO IssueStatus
VALUES
(1, 101, 'The Great Gatsby', '2023-02-01', '978-0-123456-47-2'),
(2, 102, 'To Kill a Mockingbird', '2023-03-15', '978-0-321876-55-9'),
(3, 103, '1984', '2023-01-10', '978-0-123456-78-8'),
(4, 104, 'Moby Dick', '2023-04-05', '978-0-123456-89-0'),
(5, 105, 'Pride and Prejudice', '2023-05-20', '978-0-123456-90-0'),
(6, 106, 'Chemmeen', '2023-06-10', '978-0-987654-32-1'),
(7, 107, 'Khasakkinte Itihasam', '2023-07-01', '978-0-987654-32-2'),
(8, 108, 'Manju', '2023-07-15', '978-0-987654-32-3'),
(9, 109, 'Randidangazhi', '2023-08-01', '978-0-987654-32-4'),
(10, 110, 'The God of Small Things', '2023-08-10', '978-0-987654-32-5');

select * from issuestatus;

-- 6 Insert into ReturnStatus table

INSERT INTO ReturnStatus
VALUES
(1, 101, 'The Great Gatsby', '2023-03-01', '978-0-123456-47-2'),
(2, 105, 'To Kill a Mockingbird', '2023-04-01', '978-0-321876-55-9'),
(3, 103, '1984', '2023-02-15', '978-0-123456-78-8'),
(4, 107, 'Moby Dick', '2023-05-10', '978-0-123456-89-0'),
(5, 110, 'Pride and Prejudice', '2023-06-05', '978-0-123456-90-0'),
(6, 106, 'Chemmeen', '2023-07-15', '978-0-987654-32-1'),
(7, 102, 'Khasakkinte Itihasam', '2023-08-20', '978-0-987654-32-2'),
(8, 109, 'Manju', '2023-09-01', '978-0-987654-32-3'),
(9, 104, 'Randidangazhi', '2023-10-05', '978-0-987654-32-4'),
(10, 108, 'The God of Small Things', '2023-10-10', '978-0-987654-32-5');

select * from returnstatus;





