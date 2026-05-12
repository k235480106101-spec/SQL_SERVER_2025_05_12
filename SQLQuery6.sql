CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),

    ContractID INT,

    PaymentDate DATETIME,

    AmountPaid DECIMAL(18,2),

    Collector NVARCHAR(100),

    RemainingDebt DECIMAL(18,2),

    FOREIGN KEY (ContractID)
        REFERENCES Contracts(ContractID)
);