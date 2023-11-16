CREATE TABLE [dbo].[RatingSeriesEpisode]
(
	[Id]				BIGINT		NOT NULL	IDENTITY(1,1),
	[SeriesEpisodeId]	BIGINT		NOT NULL,
	[AccountId]			INT			NOT NULL,
	[Rating]			TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingSeriesEpisode PRIMARY KEY (Id),
	CONSTRAINT FK_RatingSeriesEpisode_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingSeriesEpisode_SeriesEpisode FOREIGN KEY (SeriesEpisodeId) REFERENCES SeriesEpisode(Id),
	CONSTRAINT CHK_RatingSeriesEpisode_Rating CHECK (Rating > 0 AND Rating <= 10)
)