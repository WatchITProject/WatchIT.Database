CREATE TABLE [dbo].[AuthBackgroundImage]
(
	[Id]				SMALLINT		NOT NULL	IDENTITY(1,1),
	[Description]		VARCHAR(100)	NULL,
	[UploadDate]		DATETIME		NOT NULL	DEFAULT(GETDATE()),
	[Image]				VARBINARY(MAX)	NOT NULL
	CONSTRAINT PK_AuthBackgroundImage PRIMARY KEY (Id)
)
