-- 		*** Хранилище документов ***
-- 	Для передачи в базу данных, используется 2 метода шифрования данных
-- 	1) для шифрования данных применяется ключ
-- ключ из ICryptographyService - RLE 
--      2) выражение RLE разворачивается.
-- расшифровка данных происходит в аналогичном порядке.

CREATE TABLE [Documents] 
(
    [ID] INT NOT NULL
	    PRIMARY KEY,
    [Name] NVARCHAR(MAX),
    [Content] NVARCHAR(MAX),
    [Check] NVARCHAR(MAX),
    [Size] NVARCHAR(MAX)
)

CREATE TABLE [Messsage_Types]
(
    [ID] INT NOT NULL
        PRIMARY KEY,
    [Content] NVARCHAR(MAX)
)

CREATE TABLE [Messages]
(
    [ID] INT
        PRIMARY KEY,
    [AID] INT
	    FOREIGN KEY REFERENCES [USERS](ID), -- Author's ID
    [DID] INT
	    FOREIGN KEY REFERENCES [DOCUMENTS](ID), -- Document's ID
    [MID] INT
        FOREIGN KEY REFERENCES [MESSAGE_TYPES](ID) -- Message's type ID
)

