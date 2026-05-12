CREATE TABLE Contracts (
    ContractID INT PRIMARY KEY IDENTITY(1,1),

    CustomerID INT,

    LoanAmount DECIMAL(18,2),

    StartDate DATE,

    Deadline1 DATE,

    Deadline2 DATE,

    Status NVARCHAR(50),

    RemainingDebt DECIMAL(18,2),

    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);