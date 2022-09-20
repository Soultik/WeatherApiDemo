CREATE TABLE [dbo].[WeatherCondition]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Icon] NVARCHAR(16) NOT NULL,
	[DescriptionEnglish] NVARCHAR(64) NOT NULL,
	[DescriptionGerman] NVARCHAR(64) NOT NULL,
	[DescriptionFrench] NVARCHAR(64) NOT NULL
)
