CREATE TABLE [dbo].[AuthBackgroundImage]
(
	[Id]				SMALLINT		NOT NULL	IDENTITY(1,1),
	[Description]		VARCHAR(100)	NULL,
	[ContentType]		VARCHAR(100)	NOT NULL,
	[Image]				VARBINARY(MAX)	NOT NULL
	CONSTRAINT PK_AuthBackgroundImage PRIMARY KEY (Id)
)
