CREATE PROCEDURE [dbo].[spWeatherObservation_GetByCityName]
	@CityName nvarchar(128)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT *
	FROM WeatherObservation WO
	LEFT JOIN City ON WO.CityId = City.Id
	LEFT JOIN WeatherCondition WC ON WC.Id  = WO.WeatherConditionId
	WHERE City.Name = @CityName
	AND WO.TimeRecorded = (
		SELECT MAX(TimeRecorded)
		FROM WeatherObservation
		WHERE WeatherObservation.CityId = WO.CityId
		)
END