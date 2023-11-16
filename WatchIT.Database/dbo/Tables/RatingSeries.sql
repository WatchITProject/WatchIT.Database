CREATE TABLE [dbo].[RatingSeries]
(
	[Id]			BIGINT		NOT NULL	IDENTITY(1,1),
	[SeriesId]		INT			NOT NULL,
	[AccountId]		INT			NOT NULL,
	[Rating]		TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingSeries PRIMARY KEY (Id),
	CONSTRAINT FK_RatingSeries_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingSeries_Series FOREIGN KEY (SeriesId) REFERENCES Series(Id),
	CONSTRAINT CHK_RatingSeries_Rating CHECK (Rating > 0 AND Rating <= 10)
)
