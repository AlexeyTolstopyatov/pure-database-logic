--          Хранение учетных данных
-- * добавлять/изменять группы может только администратор
-- * группы = отделы
-- * правила [Content]:
--      АДМИНИСТРАТОР/ССЫЛКА
--          adm/alexey
CREATE TABLE [TYPES]
(
    [ID] INT NOT NULL
	    PRIMARY KEY,
    [Content] NVARCHAR(MAX),
    [RID] INT NOT NULL
        FOREIGN KEY REFERENCES [RULES](ID)
)


CREATE TABLE [USERS]
(
    [ID] INT NOT NULL
        PRIMARY KEY,

    [Login] NVARCHAR(MAX) NOT NULL,
    [Pass] NVARCHAR(MAX) NOT NULL,
    [Type] INT NOT NULL
        FOREIGN KEY REFERENCES [TYPES](ID),

    [Name] NVARCHAR(MAX) NOT NULL,
    [SName] NVARCHAR(MAX) NOT NULL
)

