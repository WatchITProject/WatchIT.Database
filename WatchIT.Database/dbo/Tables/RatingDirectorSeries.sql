CREATE TABLE [dbo].[RatingDirectorSeries]
(
	[Id]				BIGINT		NOT NULL	IDENTITY(1,1),
	[DirectorSeriesId]	BIGINT		NOT NULL,
	[AccountId]			INT			NOT NULL,
	[Rating]			TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingDirectorSeries PRIMARY KEY (Id),
	CONSTRAINT FK_RatingDirectorSeries_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingDirectorSeries_Director FOREIGN KEY (DirectorSeriesId) REFERENCES DirectorSeries(Id),
	CONSTRAINT CHK_RatingDirectorSeries_Rating CHECK (Rating > 0 AND Rating <= 10)
)