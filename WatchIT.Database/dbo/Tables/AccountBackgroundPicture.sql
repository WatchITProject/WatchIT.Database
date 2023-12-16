CREATE TABLE [dbo].[AccountBackgroundPicture]
(
	[Id]			INT				NOT NULL	IDENTITY(1,1),
	[UploadDate]	DATETIME		NOT NULL	DEFAULT(GETDATE()),
	[Image]			VARBINARY(MAX)	NOT NULL,
	CONSTRAINT PK_AccountBackgroundPicture PRIMARY KEY (Id)
)
