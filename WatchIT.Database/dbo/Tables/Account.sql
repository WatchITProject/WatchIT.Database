CREATE TABLE [dbo].[Account]
(
	[Id]							INT					NOT NULL	IDENTITY(1,1),
	[Username]						VARCHAR(320)		NOT NULL,
	[Email]							VARCHAR(320)		NOT NULL,
	[Password]						VARBINARY(MAX)		NOT NULL,
	[Salt]							VARCHAR(20)			NOT NULL,
	[Admin]							BIT					NOT NULL	DEFAULT(0),
	[Description]					VARCHAR(MAX)		NULL,
	[AccountProfilePictureId]		INT					NULL,
	[AccountBackgroundPictureId]	INT					NULL,
	[CreationDate]					DATETIME			NOT NULL	DEFAULT(GetDate()),
	[PasswordChangeDate]			DATETIME			NOT NULL	DEFAULT(GetDate()),
	[LastActiveDate]				DATETIME			NOT NULL	DEFAULT(GetDate()),
	CONSTRAINT PK_Account PRIMARY KEY (Id),
	CONSTRAINT FK_Account_AccountProfilePicture FOREIGN KEY (AccountProfilePictureId) REFERENCES AccountProfilePicture(Id),
	CONSTRAINT FK_Account_AccountBackgroundPicture FOREIGN KEY (AccountBackgroundPictureId) REFERENCES AccountBackgroundPicture(Id),
)
