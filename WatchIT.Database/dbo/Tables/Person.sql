CREATE TABLE [dbo].[Person]
(
	[Id]			INT				NOT NULL	IDENTITY(1,1),
	[Name]			VARCHAR(100)	NOT NULL,
	[FullName]		VARCHAR(200)	NULL,
	[Description]	VARCHAR(MAX)	NULL,
	[Birthday]		DATE			NULL,
	CONSTRAINT PK_Person PRIMARY KEY (Id)
)
