using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeatherDataManager.Library.Models
{
    public class WeatherFromDbModel
    {
        public string Name { get; set; }
        public string Country { get; set; }

        public string DescriptionGerman { get; set; }
        public string Icon { get; set; }
        public int Temperature { get; set; }
        public int Humidity { get; set; }
        public int AirPressure { get; set; }
        public int TempLowest { get; set; }
        public int TempHighest { get; set; }
        public int WindSpeed { get; set; }
        public int WindDirection { get; set; }
    }
}
