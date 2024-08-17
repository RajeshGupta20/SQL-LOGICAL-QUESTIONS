
-- Employees Table
CREATE TABLE Employees (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT
);

-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT,
    DepartmentName VARCHAR(100)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT,
    EmployeeID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

-- Query to retrieve the total sales amount for each department
SELECT 
    d.DepartmentName,
    SUM(o.TotalAmount) AS TotalSalesAmount
FROM 
    Departments d
JOIN 
    Employees e ON d.DepartmentID = e.DepartmentID
JOIN 
    Orders o ON e.EmployeeID = o.EmployeeID
GROUP BY 
    d.DepartmentName;
