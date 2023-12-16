CREATE TABLE [dbo].[Account]
(
	[Id]					INT				NOT NULL	IDENTITY(1,1),
	[Username]				VARCHAR(320)	NOT NULL,
	[Email]					VARCHAR(320)	NOT NULL,
	[Password]				VARBINARY(MAX)	NOT NULL,
	[Salt]					VARCHAR(20)		NOT NULL,
	[Admin]					BIT				NOT NULL	DEFAULT(0),
	[Description]			VARCHAR(MAX)	NULL,
	[ProfilePicture]		VARBINARY(MAX)	NULL,
	[BackgroundPicture]		VARBINARY(MAX)	NULL,
	[CreationDate]			DATETIME		NOT NULL	DEFAULT(GetDate()),
	[PasswordChangeDate]	DATETIME		NOT NULL	DEFAULT(GetDate()),
	[LastActiveDate]		DATETIME		NOT NULL	DEFAULT(GetDate()),
	CONSTRAINT PK_Account PRIMARY KEY (Id)
)
