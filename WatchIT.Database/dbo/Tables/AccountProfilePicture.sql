CREATE TABLE [dbo].[AccountProfilePicture]
(
	[Id]			INT				NOT NULL	IDENTITY(1,1),
	[UploadDate]	DATETIME		NOT NULL	DEFAULT(GETDATE()),
	[Image]			VARBINARY(MAX)	NOT NULL,
	CONSTRAINT PK_AccountProfilePicture PRIMARY KEY (Id)
)
