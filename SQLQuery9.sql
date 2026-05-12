CREATE FUNCTION fn_CalcMoneyContract
(
    @ContractID INT,
    @TargetDate DATE
)
RETURNS DECIMAL(18,2)
AS
BEGIN

    DECLARE @LoanAmount DECIMAL(18,2);
    DECLARE @StartDate DATE;
    DECLARE @Deadline1 DATE;

    DECLARE @Days INT;

    DECLARE @Interest DECIMAL(18,2);

    DECLARE @Result DECIMAL(18,2);

    SELECT
        @LoanAmount = LoanAmount,
        @StartDate = StartDate,
        @Deadline1 = Deadline1
    FROM Contracts
    WHERE ContractID = @ContractID;

    SET @Days =
        DATEDIFF(DAY, @StartDate, @TargetDate);

    SET @Interest =
        @LoanAmount * 0.005 * @Days;

    SET @Result =
        @LoanAmount + @Interest;

    RETURN @Result;

END;