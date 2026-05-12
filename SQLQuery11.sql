SELECT
    c.ContractID,
    cu.FullName,
    cu.Phone,
    c.LoanAmount,

    DATEDIFF(DAY, c.Deadline1, GETDATE())
        AS OverdueDays,

    dbo.fn_CalcMoneyContract(
        c.ContractID,
        GETDATE()
    ) AS CurrentDebt

FROM Contracts c

JOIN Customers cu
ON c.CustomerID = cu.CustomerID

WHERE
    GETDATE() > c.Deadline1
    AND c.Status <> N'Đã thanh toán';