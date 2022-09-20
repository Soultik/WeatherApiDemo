CREATE TABLE [dbo].[WeatherObservation]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
	[CityId] INT NOT NULL,
	[WeatherConditionId] INT NOT NULL,
	[TimeRecorded] DATETIME2 NOT NULL,
	[Temperature] INT NOT NULL,
	[Humidity] INT NOT NULL,
	[AirPressure] INT NOT NULL,
	[TempLowest] INT NOT NULL,
	[TempHighest] INT NOT NULL,
	[WindSpeed] INT NOT NULL,
	[WindDirection] INT NOT NULL, 
    CONSTRAINT [FK_WeatherObservation_City] FOREIGN KEY ([CityId]) REFERENCES [City]([Id]), 
    CONSTRAINT [FK_WeatherObservation_WeatherCondition] FOREIGN KEY ([WeatherConditionId]) REFERENCES [WeatherCondition]([Id])
)
