CREATE TABLE [dbo].[MediaSeries]
(
	[Id]			INT			NOT NULL	IDENTITY(1,1),
	[MediaId]		BIGINT		NOT NULL	UNIQUE,
	[EndDate]		DATE		NULL,
	CONSTRAINT PK_MediaSeries PRIMARY KEY (Id),
	CONSTRAINT FK_MediaSeries_Media FOREIGN KEY (MediaId) REFERENCES Media(Id),
)
