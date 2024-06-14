CREATE TRIGGER InsertMessage ON [USERS]
AFTER INSERT AS
BEGIN
    SELECT 'INSERTED', ID, [Name], [SName], [Login], [Type] 
    FROM [USERS]
END

GO

CREATE TRIGGER UpdateMessage ON [USERS]
AFTER UPDATE AS
BEGIN
    SELECT 'UPDATED', ID, [Name], [SName], [Login], [Type] 
    FROM [USERS]
END