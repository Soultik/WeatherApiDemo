namespace WeatherDataManagerDemo.Logic
{
    public interface ILocationToCityConverter
    {
        public string FindCityByLocation(string lon, string lat);
    }
}