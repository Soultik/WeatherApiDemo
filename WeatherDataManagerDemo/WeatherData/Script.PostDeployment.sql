/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherCondition
                   WHERE Icon = '01n')
   BEGIN
       INSERT INTO WeatherCondition(Icon, DescriptionEnglish, DescriptionGerman, DescriptionFrench)
       VALUES ('01n', 'Clear sky', 'Klarer Himmel', 'Ciel clair');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM City
                   WHERE [Name] = 'Erfurt')
   BEGIN
       INSERT INTO City([Name], [Country])
       VALUES ('Erfurt', 'DE');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM City
                   WHERE [Name] = 'Ufa')
   BEGIN
       INSERT INTO City([Name], [Country])
       VALUES ('Ufa', 'RU');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM City
                   WHERE [Name] = 'Rome')
   BEGIN
       INSERT INTO City([Name], [Country])
       VALUES ('Rome', 'IT');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM City
                   WHERE [Name] = 'Paris')
   BEGIN
       INSERT INTO City([Name], [Country])
       VALUES ('Paris', 'FR');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM City
                   WHERE [Name] = 'Hamburg')
   BEGIN
       INSERT INTO City([Name], [Country])
       VALUES ('Hamburg', 'DE');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM City
                   WHERE [Name] = 'Vancouver')
   BEGIN
       INSERT INTO City([Name], [Country])
       VALUES ('Vancouver', 'CA');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM City
                   WHERE [Name] = 'London')
   BEGIN
       INSERT INTO City([Name], [Country])
       VALUES ('London', 'GB');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM City
                   WHERE [Name] = 'Manchester')
   BEGIN
       INSERT INTO City([Name], [Country])
       VALUES ('Manchester', 'GB');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM City
                   WHERE [Name] = 'Oxford')
   BEGIN
       INSERT INTO City([Name], [Country])
       VALUES ('Oxford', 'GB');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM City
                   WHERE [Name] = 'Madrid')
   BEGIN
       INSERT INTO City([Name], [Country])
       VALUES ('Madrid', 'ES');
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherObservation
                   WHERE CityId = 1)
   BEGIN
       INSERT INTO WeatherObservation(CityId, WeatherConditionId,  TimeRecorded,  
       Temperature, Humidity, AirPressure, TempLowest, TempHighest, WindSpeed, WindDirection)
       VALUES (1, 1, GETUTCDATE(), 13, 78, 1011, 5, 14, 15, 290);
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherObservation
                   WHERE CityId = 2)
   BEGIN
       INSERT INTO WeatherObservation(CityId, WeatherConditionId,  TimeRecorded,  
       Temperature, Humidity, AirPressure, TempLowest, TempHighest, WindSpeed, WindDirection)
       VALUES (2, 1, GETUTCDATE(), 15, 98, 1019, 5, 19, 25, 220);
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherObservation
                   WHERE CityId = 3)
   BEGIN
       INSERT INTO WeatherObservation(CityId, WeatherConditionId,  TimeRecorded,  
       Temperature, Humidity, AirPressure, TempLowest, TempHighest, WindSpeed, WindDirection)
       VALUES (3, 1, GETUTCDATE(), 19, 88, 911, 5, 15, 19, 220);
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherObservation
                   WHERE CityId = 4)
   BEGIN
       INSERT INTO WeatherObservation(CityId, WeatherConditionId,  TimeRecorded,  
       Temperature, Humidity, AirPressure, TempLowest, TempHighest, WindSpeed, WindDirection)
       VALUES (4, 1, GETUTCDATE(), 19, 88, 911, 5, 15, 19, 220);
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherObservation
                   WHERE CityId = 5)
   BEGIN
       INSERT INTO WeatherObservation(CityId, WeatherConditionId,  TimeRecorded,  
       Temperature, Humidity, AirPressure, TempLowest, TempHighest, WindSpeed, WindDirection)
       VALUES (5, 1, GETUTCDATE(), 19, 88, 911, 5, 15, 19, 220);
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherObservation
                   WHERE CityId = 6)
   BEGIN
       INSERT INTO WeatherObservation(CityId, WeatherConditionId,  TimeRecorded,  
       Temperature, Humidity, AirPressure, TempLowest, TempHighest, WindSpeed, WindDirection)
       VALUES (6, 1, GETUTCDATE(), 19, 88, 911, 5, 15, 19, 220);
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherObservation
                   WHERE CityId = 7)
   BEGIN
       INSERT INTO WeatherObservation(CityId, WeatherConditionId,  TimeRecorded,  
       Temperature, Humidity, AirPressure, TempLowest, TempHighest, WindSpeed, WindDirection)
       VALUES (7, 1, GETUTCDATE(), 19, 88, 911, 5, 15, 19, 220);
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherObservation
                   WHERE CityId = 8)
   BEGIN
       INSERT INTO WeatherObservation(CityId, WeatherConditionId,  TimeRecorded,  
       Temperature, Humidity, AirPressure, TempLowest, TempHighest, WindSpeed, WindDirection)
       VALUES (8, 1, GETUTCDATE(), 19, 88, 911, 5, 15, 19, 220);
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherObservation
                   WHERE CityId = 9)
   BEGIN
       INSERT INTO WeatherObservation(CityId, WeatherConditionId,  TimeRecorded,  
       Temperature, Humidity, AirPressure, TempLowest, TempHighest, WindSpeed, WindDirection)
       VALUES (9, 1, GETUTCDATE(), 19, 88, 911, 5, 15, 19, 220);
   END
END

BEGIN
   IF NOT EXISTS (SELECT * FROM WeatherObservation
                   WHERE CityId = 10)
   BEGIN
       INSERT INTO WeatherObservation(CityId, WeatherConditionId,  TimeRecorded,  
       Temperature, Humidity, AirPressure, TempLowest, TempHighest, WindSpeed, WindDirection)
       VALUES (10, 1, GETUTCDATE(), 19, 88, 911, 5, 15, 19, 220);
   END
END

