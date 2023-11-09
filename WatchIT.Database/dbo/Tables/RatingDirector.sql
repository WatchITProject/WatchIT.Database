CREATE TABLE [dbo].[RatingDirector]
(
	[Id]			BIGINT		NOT NULL	IDENTITY(1,1),
	[DirectorId]		BIGINT		NOT NULL,
	[AccountId]		INT			NOT NULL,
	[Rating]		TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingDirector PRIMARY KEY (Id),
	CONSTRAINT FK_RatingDirector_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingDirector_Director FOREIGN KEY (DirectorId) REFERENCES Director(Id),
	CONSTRAINT CHK_RatingDirector_Rating CHECK (Rating >= 0 AND Rating <= 10)
)