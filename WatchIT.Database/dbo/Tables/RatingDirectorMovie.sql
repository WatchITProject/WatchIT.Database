CREATE TABLE [dbo].[RatingDirectorMovie]
(
	[Id]			BIGINT		NOT NULL	IDENTITY(1,1),
	[DirectorMovieId]	BIGINT		NOT NULL,
	[AccountId]		INT			NOT NULL,
	[Rating]		TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingDirectorMovie PRIMARY KEY (Id),
	CONSTRAINT FK_RatingDirectorMovie_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingDirectorMovie_Director FOREIGN KEY (DirectorMovieId) REFERENCES DirectorMovie(Id),
	CONSTRAINT CHK_RatingDirectorMovie_Rating CHECK (Rating > 0 AND Rating <= 10)
)