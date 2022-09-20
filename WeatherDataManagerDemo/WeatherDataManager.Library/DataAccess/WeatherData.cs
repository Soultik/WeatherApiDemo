using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WeatherDataManager.Library.Internal.DataAccess;
using WeatherDataManager.Library.Models;

namespace WeatherDataManager.Library.DataAccess
{
    public class WeatherData
    {
        public List<WeatherFromDbModel> GetCurrentWeatherByCity(string city)
        {
            SqlDataAccess sql = new SqlDataAccess();

            var p = new { CityName = city };

            var output = sql.LoadData<WeatherFromDbModel, dynamic>("dbo.spWeatherObservation_GetByCityName", p, "WeatherData");

            return output;
        }
    }
}
