CREATE TABLE [dbo].[RatingMedia]
(
	[Id]			BIGINT		NOT NULL	IDENTITY(1,1),
	[MediaId]		BIGINT		NOT NULL,
	[AccountId]		INT			NOT NULL,
	[Rating]		TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingMedia PRIMARY KEY (Id),
	CONSTRAINT FK_RatingMedia_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingMedia_Media FOREIGN KEY (MediaId) REFERENCES Media(Id),
	CONSTRAINT CHK_atingMedia_Rating CHECK (Rating > 0 AND Rating <= 10)
)
