CREATE TABLE [dbo].[RatingMovie]
(
	[Id]			BIGINT		NOT NULL	IDENTITY(1,1),
	[MovieId]		INT			NOT NULL,
	[AccountId]		INT			NOT NULL,
	[Rating]		TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingMovie PRIMARY KEY (Id),
	CONSTRAINT FK_RatingMovie_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingMovie_Actor FOREIGN KEY (MovieId) REFERENCES Movie(Id),
	CONSTRAINT CHK_RatingMovie_Rating CHECK (Rating > 0 AND Rating <= 10)
)
