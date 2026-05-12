CREATE PROCEDURE sp_PayDebt
(
    @ContractID INT,
    @AmountPaid DECIMAL(18,2),
    @Collector NVARCHAR(100)
)
AS
BEGIN

    DECLARE @CurrentDebt DECIMAL(18,2);

    SELECT @CurrentDebt =
        dbo.fn_CalcMoneyContract(
            @ContractID,
            GETDATE()
        );

    SET @CurrentDebt =
        @CurrentDebt - @AmountPaid;

    UPDATE Contracts
    SET RemainingDebt = @CurrentDebt
    WHERE ContractID = @ContractID;

    INSERT INTO Payments
    (
        ContractID,
        PaymentDate,
        AmountPaid,
        Collector,
        RemainingDebt
    )
    VALUES
    (
        @ContractID,
        GETDATE(),
        @AmountPaid,
        @Collector,
        @CurrentDebt
    );

END;