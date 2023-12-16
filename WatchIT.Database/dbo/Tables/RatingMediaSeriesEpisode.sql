CREATE TABLE [dbo].[RatingMediaSeriesEpisode]
(
	[Id]					BIGINT		NOT NULL	IDENTITY(1,1),
	[MediaSeriesEpisodeId]	BIGINT		NOT NULL,
	[AccountId]				INT			NOT NULL,
	[Rating]				TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingMediaSeriesEpisode PRIMARY KEY (Id),
	CONSTRAINT FK_RatingMediaSeriesEpisode_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingMediaSeriesEpisode_MediaSeriesEpisode FOREIGN KEY (MediaSeriesEpisodeId) REFERENCES MediaSeriesEpisode(Id),
	CONSTRAINT CHK_RatingMediaSeriesEpisode_Rating CHECK (Rating > 0 AND Rating <= 10)
)