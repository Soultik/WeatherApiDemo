using WeatherDataManager.Library.Models;

namespace WeatherDataManager.Library.DataAccess
{
    public interface IWeatherData
    {
        List<WeatherFromDbModel> GetCurrentWeatherByCity(string city);
    }
}