CREATE TABLE ContractLogs (
    LogID INT PRIMARY KEY IDENTITY(1,1),

    ContractID INT,

    OldStatus NVARCHAR(50),

    NewStatus NVARCHAR(50),

    ChangedDate DATETIME,

    Note NVARCHAR(500),

    FOREIGN KEY (ContractID)
        REFERENCES Contracts(ContractID)
);