namespace WeatherDataManagerDemo.Models
{
    public class WeatherToFrontEndModel
    {
        public string name { get; set; }
        public WeatherWeatherFieldModel[] weather { get; set; }
        public WeatherMainFieldModel main { get; set; }
        public WeatherWindFieldModel wind { get; set; }
        public WeatherSysFieldModel sys { get; set; }
    }
}
