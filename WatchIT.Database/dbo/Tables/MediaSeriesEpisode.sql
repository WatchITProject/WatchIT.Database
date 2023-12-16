CREATE TABLE [dbo].[MediaSeriesEpisode]
(
	[Id]					BIGINT			NOT NULL	IDENTITY(1,1),
	[MediaSeriesSeasonId]	BIGINT			NOT NULL,	
	[Number]				SMALLINT		NULL,
	[Name]					VARCHAR(255)	NULL,
	CONSTRAINT PK_MediaSeriesEpisode PRIMARY KEY (Id),
	CONSTRAINT FK_MediaSeriesEpisode_MediaSeriesSeason FOREIGN KEY (MediaSeriesSeasonId) REFERENCES MediaSeriesSeason(Id)
)
