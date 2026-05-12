CREATE PROCEDURE sp_CreateContract
(
    @FullName NVARCHAR(100),
    @Phone VARCHAR(15),
    @Address NVARCHAR(200),
    @CCCD VARCHAR(20),

    @LoanAmount DECIMAL(18,2),

    @Deadline1 DATE,
    @Deadline2 DATE
)
AS
BEGIN

    DECLARE @CustomerID INT;

    INSERT INTO Customers
    VALUES (@FullName, @Phone, @Address, @CCCD);

    SET @CustomerID = SCOPE_IDENTITY();

    INSERT INTO Contracts
    (
        CustomerID,
        LoanAmount,
        StartDate,
        Deadline1,
        Deadline2,
        Status,
        RemainingDebt
    )
    VALUES
    (
        @CustomerID,
        @LoanAmount,
        GETDATE(),
        @Deadline1,
        @Deadline2,
        N'Đang vay',
        @LoanAmount
    );

END;