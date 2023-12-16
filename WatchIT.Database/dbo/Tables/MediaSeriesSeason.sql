CREATE TABLE [dbo].[MediaSeriesSeason]
(
	[Id]				BIGINT			NOT NULL	IDENTITY(1,1),
	[MediaSeriesId]		INT				NOT NULL,
	[Number]			SMALLINT		NULL,
	[Name]				VARCHAR(255)	NULL,
	CONSTRAINT PK_MediaSeriesSeason PRIMARY KEY (Id),
	CONSTRAINT FK_MediaSeriesSeason_MediaSeries FOREIGN KEY (MediaSeriesId) REFERENCES MediaSeries(Id)
)
