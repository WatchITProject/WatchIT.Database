CREATE TABLE [dbo].[SeriesEpisode]
(
	[Id]		BIGINT			NOT NULL	IDENTITY(1,1),
	[SeasonId]	BIGINT			NOT NULL,	
	[Number]	SMALLINT		NULL,
	[Name]		VARCHAR(255)	NULL,
	CONSTRAINT PK_SeriesEpisode PRIMARY KEY (Id),
	CONSTRAINT FK_SeriesEpisode_Season FOREIGN KEY (SeasonId) REFERENCES SeriesSeason(Id)
)
