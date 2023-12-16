CREATE TABLE [dbo].[RatingMediaSeriesSeason]
(
	[Id]					BIGINT		NOT NULL	IDENTITY(1,1),
	[MediaSeriesSeasonId]	BIGINT		NOT NULL,
	[AccountId]				INT			NOT NULL,
	[Rating]				TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingMediaSeriesSeason PRIMARY KEY (Id),
	CONSTRAINT FK_RatingMediaSeriesSeason_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingMediaSeriesSeason_SeriesSeason FOREIGN KEY (MediaSeriesSeasonId) REFERENCES MediaSeriesSeason(Id),
	CONSTRAINT CHK_RatingMediaSeriesSeason_Rating CHECK (Rating > 0 AND Rating <= 10)
)