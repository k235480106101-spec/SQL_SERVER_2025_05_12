CREATE TRIGGER trg_UpdateOverdue
ON Contracts
AFTER UPDATE
AS
BEGIN

    UPDATE Contracts
    SET Status = N'Quá hạn'

    WHERE
        GETDATE() > Deadline1
        AND Status = N'Đang vay';

END;