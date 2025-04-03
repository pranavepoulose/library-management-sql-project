# Display all the tables and Write the queries for the following : 

-- 1. Retrieve the book title, category, and rental price of all available books. 
SELECT Book_title, Category, Rental_Price
FROM Books
WHERE Status = 'yes';

-- 2. List the employee names and their respective salaries in descending order of salary. 

SELECT Emp_name, Salary
FROM Employee
ORDER BY Salary DESC;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books. 

SELECT c.Customer_name, i.Issued_book_name
FROM IssueStatus i
INNER JOIN Customer c ON i.Issued_cust = c.Customer_Id;

-- 4. Display the total count of books in each category. 

SELECT Category, COUNT(*) AS Total_books
FROM Books
GROUP BY Category;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 

SELECT Emp_name, Position
FROM Employee
WHERE Salary > 50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.

SELECT Customer_name,Reg_date
FROM Customer
WHERE Reg_date < '2022-01-01'
AND Customer_Id NOT IN (SELECT DISTINCT Issued_cust FROM IssueStatus);

-- 7. Display the branch numbers and the total count of employees in each branch. 

SELECT Branch_no, COUNT(*) AS Total_employees
FROM Employee
GROUP BY Branch_no;

-- 8. Display the names of customers who have issued books in the month of June 2023. 

SELECT c.Customer_name
FROM Customer c
INNER JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
WHERE DATE_FORMAT(i.Issue_date, '%Y-%m') = '2023-06';

-- 9. Retrieve book_title from book table containing history. 

SELECT Book_title
FROM Books
WHERE Book_title LIKE '%history%';

-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees .
SELECT Branch_no, COUNT(*) AS Total_employees
FROM Employee
GROUP BY Branch_no
HAVING COUNT(*) > 5;

 -- 11. Retrieve the names of employees who manage branches and their respective branch addresses.
 
 SELECT e.emp_name, b.branch_no, b.branch_address
FROM Employee e
INNER JOIN Branch b ON e.branch_no = b.branch_no
WHERE e.position = 'manager';

-- 12. Display the names of customers who have issued books with a rental price higher than Rs. 25. 

SELECT c.Customer_name, b.Book_title
FROM Customer c
INNER JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
INNER JOIN Books b ON i.ISBN_book = b.ISBN
WHERE b.Rental_Price > 25;
