namespace WeatherDataManagerDemo.Logic
{
    public class LocationToCityConverter : ILocationToCityConverter
    {
        public string FindCityByLocation(string lon, string lat)
        {
            return "Erfurt";
        }
    }
}
