CREATE TABLE [dbo].[RatingSeriesSeason]
(
	[Id]				BIGINT		NOT NULL	IDENTITY(1,1),
	[SeriesSeasonId]	BIGINT		NOT NULL,
	[AccountId]			INT			NOT NULL,
	[Rating]			TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingSeriesSeason PRIMARY KEY (Id),
	CONSTRAINT FK_RatingSeriesSeason_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingSeriesSeason_SeriesSeason FOREIGN KEY (SeriesSeasonId) REFERENCES SeriesSeason(Id),
	CONSTRAINT CHK_RatingSeriesSeason_Rating CHECK (Rating > 0 AND Rating <= 10)
)