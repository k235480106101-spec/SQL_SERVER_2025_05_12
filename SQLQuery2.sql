CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100),
    Phone VARCHAR(15),
    Address NVARCHAR(200),
    CCCD VARCHAR(20)
);