CREATE TABLE [dbo].[PersonCreator]
(
	[Id]					BIGINT			NOT NULL	IDENTITY(1,1),
	[MediaId]				BIGINT			NOT NULL,
	[PersonId]				INT				NOT NULL,
	[PersonCreatorTypeId]	SMALLINT		NOT NULL,
	CONSTRAINT PK_PersonCreator PRIMARY KEY (Id),
	CONSTRAINT FK_PersonCreator_Media FOREIGN KEY (MediaId) REFERENCES Media(Id),
	CONSTRAINT FK_PersonCreator_Person FOREIGN KEY (PersonId) REFERENCES Person(Id),
	CONSTRAINT FK_PersonCreator_PersonCreatorType FOREIGN KEY (PersonCreatorTypeId) REFERENCES PersonCreatorType(Id)
)